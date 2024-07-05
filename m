Return-Path: <linux-man+bounces-1322-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 871CF928BFF
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 17:55:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 05B211F255EC
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 15:55:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B9952D045;
	Fri,  5 Jul 2024 15:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=126.com header.i=@126.com header.b="NR6FTgk/"
X-Original-To: linux-man@vger.kernel.org
Received: from m16.mail.126.com (m16.mail.126.com [220.197.31.7])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DD7B16C848
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 15:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720194904; cv=none; b=n3vT1ai5H2bobbcaGEFOFnMGuNosqOZdAn/VwszeM54acDTI1zMTlw4SOzMxrlCsgWDilga5AxXKzKO1O7odLdgAiFCOTuYoe2chIAlM+gk5REycujlh9c9Nkj0ttUAZ5lpII5YDXD8EOsQx2XChilrXATG8RbCRY0Tu8tKMVds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720194904; c=relaxed/simple;
	bh=rLN6HXcsg+Or0Sgk3j+eW61yY+6JXBXG8kkjHzHxwyE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MHAX5UXMelR2ZhFKsMBjeWNMSpAoc9f6pxktlDhbWh9Nt/OUfNBrePyrB3UTdjAUpASJ6A3lYLUhB9T1CGM700rU0Jmv6DEq8H98f8QvEGhvx0y+9nbU0HJbOERzO8S8pL2OfCSI1FBIuOOiDk/J4f/tvUeJba4dE1MCwPbofKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=126.com; spf=pass smtp.mailfrom=126.com; dkim=pass (1024-bit key) header.d=126.com header.i=@126.com header.b=NR6FTgk/; arc=none smtp.client-ip=220.197.31.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=126.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:From:
	Content-Type; bh=rLN6HXcsg+Or0Sgk3j+eW61yY+6JXBXG8kkjHzHxwyE=;
	b=NR6FTgk/7WFxevUO//jNd5NjbQTu+z3EdxiBSVDU84rzNFB5ZTrVf3PxZl9a6I
	eHDBGIXSrUd3qC9Im1+Ld/sYRk3NoCRo+cuKZbSPngxeFS0Hdbu6knDAzE36iV47
	kvfcsRrh1cb/K9TcA2WEE31rXDUprMlZAx6Q4fhviApaQ=
Received: from [192.168.71.119] (unknown [114.92.170.147])
	by gzga-smtp-mta-g1-0 (Coremail) with SMTP id _____wD3Hz4tF4hmhyjQAQ--.23191S2;
	Fri, 05 Jul 2024 23:54:22 +0800 (CST)
Message-ID: <ca4bfb17-c1f5-4c0d-8039-e57831c99cff@126.com>
Date: Fri, 5 Jul 2024 23:54:22 +0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
To: Alejandro Colomar <alx@kernel.org>
Cc: gcc@gcc.gnu.org, linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20240705130249.14116-2-alx@kernel.org>
 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
Content-Language: en-US
From: LIU Hao <lh_mouse@126.com>
Autocrypt: addr=lh_mouse@126.com; keydata=
 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
In-Reply-To: <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9czRJGxKR0xzcYMJQgghX5aq"
X-CM-TRANSID:_____wD3Hz4tF4hmhyjQAQ--.23191S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrWr1DuF1DtFy7JF4fuw45Jrb_yoWxWrb_ur
	yvyF97Ww18uF10gw45Arn8uFsxGF13AF4DKrykJry29asrt3WUCFs5urySyr9rKFZFqr98
	W390g3W2yry5KjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUjzVbJUUUUU==
X-CM-SenderInfo: 5okbz0xxvhqiyswou0bp/1tbi5BETRmVLaOENiAAAsC

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------9czRJGxKR0xzcYMJQgghX5aq
Content-Type: multipart/mixed; boundary="------------MDrHVXueiyie4InfbyHarXdt";
 protected-headers="v1"
From: LIU Hao <lh_mouse@126.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: gcc@gcc.gnu.org, linux-man@vger.kernel.org, libc-alpha@sourceware.org
Message-ID: <ca4bfb17-c1f5-4c0d-8039-e57831c99cff@126.com>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
References: <20240705130249.14116-2-alx@kernel.org>
 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
In-Reply-To: <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>

--------------MDrHVXueiyie4InfbyHarXdt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

5ZyoIDIwMjQtMDctMDUgMjM6MjMsIEFsZWphbmRybyBDb2xvbWFyIHZpYSBHY2Mg5YaZ6YGT
Og0KPiBIaSBNYXJ0aW4sDQo+IA0KPiBPbiBGcmksIEp1bCAwNSwgMjAyNCBhdCAwNTowMjox
NVBNIEdNVCwgTWFydGluIFVlY2tlciB3cm90ZToNCj4+PiBCdXQgd2hlbiB0aGUgdGhpbmcg
Z2V0cyBub24tdHJpdmlhbCwgYXMgaW4gc3RydG9sKDMpLCBHQ0MgbWlzc2VzIHRoZQ0KPj4+
IC1XcmVzdHJpY3QgZGlhZ25vc3RpYywgYXMgcmVwb3J0ZWQgaW4NCg0KQSBwb2ludGVyIHRv
IGBjaGFyYCBjYW4gYWxpYXMgYW55IG9iamVjdCwgc28gaW4gdGhlb3J5IG9uZSBjb3VsZCB3
cml0ZSBjb2RlIHRoYXQgbG9va3MgbGlrZSBiZWxvdy4gDQpUaGlzIHBpZWNlIG9mIGNvZGUg
aXMgcHJvYmFibHkgbm9uc2Vuc2UsIGJ1dCBpdCBpbGx1c3RyYXRlcyB0aGUgZXhhY3QgbmVj
ZXNzaXR5IG9mIHRoZSBgcmVzdHJpY3RgIA0KcXVhbGlmaWVyczoNCg0KICAgIGNoYXIqDQog
ICAgZHVtYihjaGFyKiBwKQ0KICAgICAgew0KICAgICAgICBzdHJ0b2woKGNvbnN0IGNoYXIq
KSAmcCwgJnAsIDApOw0KICAgICAgICByZXR1cm4gcDsNCiAgICAgIH0NCg0KICAgIC8vIHdh
cm5pbmc6IHBhc3NpbmcgYXJndW1lbnQgMiB0byAncmVzdHJpY3QnLXF1YWxpZmllZCBwYXJh
bWV0ZXINCiAgICAvLyBhbGlhc2VzIHdpdGggYXJndW1lbnQgMQ0KDQoNCg0KDQoNCg0KLS0g
DQpCZXN0IHJlZ2FyZHMsDQpMSVUgSGFvDQoNCg==

--------------MDrHVXueiyie4InfbyHarXdt--

--------------9czRJGxKR0xzcYMJQgghX5aq
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEKGWH6ejW+RUrDPyq+uXgu0XZsY0FAmaIFy4FAwAAAAAACgkQ+uXgu0XZsY2p
TRAAnEbkXoDP147oK+d1NhaOK6AfLiZqpbrTZOzSo03Vz0W8eYFevubPGlFnW4JqTbRY1BzSLore
hgJn9lMADJ3NHeHIpIpO8ZnJG9L2dXa20lz0Xf0Q85rOdxfeJFTWOoFvuIG3Cn/N4g5f16dUgIFh
6VLGSuxmOYRMr9qfh7+M4XH/x/OcOnuNGOxtEi4SaXJn8M89MPbKwCGf2VGlhRG5OTQ+eZoIMxEJ
JTgkAI2ppRRdFIJkinwM5zktOWbc6HE0FjZXUCk8vD43IF5tYoLG2UC5sTo/D3o6c95Jb1lW37Mh
h7qheJ0+eRrWzy7bmYOYJHaD0bJ5RXGeLItrqhR0nry7WgNuW/iGNgSRPES/dO1vRIDkUuD799S9
dE+y/d/wmJlyLbAFOiXZK1ddmXFaZWM5n8vd9InGoKCGDdO0O0r7kf81FojPvRWoTuSJ9y3yylBf
iloM3rghmY6yhklTBuawJFMWP2bbu5kLM2neiGjqcbxv+o+ZJB1FzWvb+OB17yKZDmwrx7zm/hgt
o4uNB2b9AGMdnI+uLS8KWyBuMiaeuxDbnjKwnrGvsqT08rVK+WgbPoIhIPPOylj0QBKs9rf5wf/0
WcuIj4K5HbimbsIFLhzM+pXtZ78EPNXB8fRqvebgs0m0biv9EyQQNY4/naP524hBkx9QcC72mWgN
FF0=
=717+
-----END PGP SIGNATURE-----

--------------9czRJGxKR0xzcYMJQgghX5aq--


