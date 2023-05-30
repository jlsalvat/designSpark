# -*- coding: utf-8 -*-

import empro.toolkit.adv as adv

def main():
	path=r"F:/Documents/GitHub/designSpark/boards/test_lorawan/ads_layout_lorawan_V1"
	lib=r"ads_layout_lorawan_V1_lib"
	subst=r"ads_layout_lorawan_V1_lib/tech.subst"
	substlib=r"ads_layout_lorawan_V1_lib"
	substname=r"tech"
	cell=r"test_CMWX1ZZABZ-091"
	view=r"layout"
	libS3D=r"simulation/ads_layout_lorawan_V1_lib/test_%C%M%W%X1%Z%Z%A%B%Z#2d091/_3%D%Viewer/extra/0/proj_libS3D.xml"
	varDictionary={}
	exprDictionary={}
	adv.loadDesign(path=path, lib=lib, subst=subst, substlib=substlib, substname=substname, cell=cell, view=view, libS3D=libS3D, var_dict=varDictionary, expr_dict=exprDictionary)
