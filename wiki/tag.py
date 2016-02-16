# -*- coding: utf-8 -*-
"""
@author: alexis

Repère les pages qui contiennent une chaine de caractère données et
créer une page (du nom de cette chaine de caractère) avec la liste des ces pages.

# Le programme se déroule en deux temps:
#  1 - lecture des fichiers qui contienne une chaine de caractère
#  2 - écriture de la page destination
"""

import os

path_wiki_files = "C:\git\HackFrancophonie.wiki" #replace with your path


pages = os.listdir(path_wiki_files)
# on regarde ce qui est une page et on retire les pages Accès...
pages = [x for x in pages if x[-3:] == '.md' and 'Acc' not in x]
pages.remove('_Sidebar.md')


def list_pages_with_chain(chain):
    list_pages_with_chain = []
    for page in pages:
        #ouvre le fichier
        path_file = os.path.join(path_wiki_files, page)
        text = open(path_file).read()
        # regarde s'il y a le tag
        if '[[' + chain + ']]' in text:
            list_pages_with_chain.append(page)
    return list_pages_with_chain


def write_list(chain, list_of_pages):
    destination_path = os.path.join(path_wiki_files, chain.decode('utf8') + '.md')

    text = ''
    for page in list_of_pages:
        page_text = '* [[' + page[:-3] + ']]\n'
        text += page_text

    with open(destination_path, 'w') as dest:
        dest.write(text)



# ['Démocratie', 'Economie', 'Education', 'Sécurité', 'Société', 'Mali']
for chain in ['Cartographie', 'Démocratie', 'Economie', 'Education',
              'Justice', 'Sécurité', 'Population', 'Santé']:
    write_list(chain, list_pages_with_chain(chain))
