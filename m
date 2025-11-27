Return-Path: <linux-man+bounces-4330-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FE0C8C6B2
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 01:19:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8AFD834EB08
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 00:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDA1F19E99F;
	Thu, 27 Nov 2025 00:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BGC1emMc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com [74.125.224.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEB47D098
	for <linux-man@vger.kernel.org>; Thu, 27 Nov 2025 00:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764202765; cv=none; b=AqEwZK6gUYFNRGk85yCUqAYpgT6MyV+wo1crK7DMoo4JxFAplj8PytD864mm5cBdgzpMNk+D5tzBeQF1gR/cjSFsXG4unKhXamASMD/yTVgpLNZj9jd8doIsgJX2m8w7IEyCe9IPklILpXc46CX3Va/u0LATL7CLpvgrb4uFZjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764202765; c=relaxed/simple;
	bh=RaNCZhYJKdMvx+vz652ECMwcC+ZgkCV3lkZhzFfh9Bk=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=fwU0YTDYzV4sBgmf1GCiYdHcNGh//MVQ8FVHoUPmutZxdJ52fMpxSnFGz7ScMq5XJLWLsds1oR+H8N9hmxJisObk5e6GhcWEUafZ8r6lsmiDhxqzA57mQOZuGpAM5F4tZ0NFlu6Q8QboZS3HR1lslD5E+AaxS+ldzx+jlpfJPWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BGC1emMc; arc=none smtp.client-ip=74.125.224.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-640d43060d2so272835d50.2
        for <linux-man@vger.kernel.org>; Wed, 26 Nov 2025 16:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764202763; x=1764807563; darn=vger.kernel.org;
        h=mime-version:msip_labels:content-language:accept-language
         :message-id:date:thread-index:thread-topic:subject:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fCN56t6tGwvL+EPVapxjtGEpVE6gLl1bkjBtJ6gV82o=;
        b=BGC1emMcpxvCt/+KY4FDROw83qljRUHWyHvgtfoN2B8view2xA6a7qcfO6hqR8nsy4
         4MgaINEQhZ4Opra//lgRJEj7HzFUERSR3RfWtD4JmXt5xaMFDuQ+blWUtQe+8DndXdhj
         16yoSo+4F/f9MKylDi6bfJOc1yMTv5erOJa7UMkuqlA7M9CJj9Y7vUtAY5O/H8q9uhNr
         Jir0KYf+uUOdFeGiFDpOtLkOQOoEJJqaU3KJ/5PFg0dLnQbKt8njHwrSzhywCja/jc94
         r/HtAPKncLhEWozenYGF7yOJLQYY1XRiUiovuwDfLFNvenvxbspxeXvtzb9VVFjoxTgs
         w7AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764202763; x=1764807563;
        h=mime-version:msip_labels:content-language:accept-language
         :message-id:date:thread-index:thread-topic:subject:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fCN56t6tGwvL+EPVapxjtGEpVE6gLl1bkjBtJ6gV82o=;
        b=YYFh/amnJIn3/FYFQbb+gPzsEwda+hkcB6KpDW4s4TdB3Ls7ZBNh+Byh7CQg/kW6mg
         JC8JM6pfDg+gcyknDEPGatSj3VQhnOSFSjGLem8NQlrZllehXySsIS8683QOSQfcDcHT
         O72K8VTgASb1asHDpAIbCpKokmTSBHH4E2bBfFhy4G+I4ZEKbziRTrE7DFVYnG55JRPl
         vRYREwNykh/kgRyKMAtFc2wWzxMflAoCQvAFJxx0lhxNfFv+Obkk7DZIH+k0WCt4rgQ0
         eAs43a9fGWZuj94Fk12943Wbl0DFOqwAkn9IjdGMGWyM9EgX5sz2JMx9eX2XymplLVgq
         DpAw==
X-Gm-Message-State: AOJu0YykGl4o5ggmMWSQEaSfIAlyzyuco1QKmTLAsf/fB7qSAtlvOpPg
	QdqwDsFix7B1zYvOVo4fgfBicW1LCNaVvAG2pXOUI5mALPSpcYyPzkrrPf8iXKtn
X-Gm-Gg: ASbGncuhJUh6aL7tXa/iKiWadufF9Cm0uNRfutF7JO8JvilqPRZ+iBxDa/KHgjaTJyr
	2WRzcCqhC6iFvpbw/cOF6WcTrve9ZosLxcT0hdNZu8kCxBXmsEeLYvnKyEpCei2OnQjwZArLxll
	PzTxqWQ/lYXLIBhop2MshShnS0VHyxCdf2IGvI1SbsS/8d4TqpjUqz/z5tAbreqirAm704gElPK
	xVhdUwO7CulicM/A9wPuXY9mN+T0DFakYYfYlQVHk9hEqfrAE3cEvEoa8jRUAYJ5L1fHp2Tq1aK
	xWKdkyu+hhBEs5j1zdhwIl+ryWz06qTfCF8tDU39c1Tz+GEBnEeGJzTfl58/UG3DcKBqJs4jhq5
	iBBvLDkXpJb4YncdEmuc737iGBaO9C6ETUBfcz77iko8kBxgu3JwjDIWKdfs0u2QxXTSmj2JtP+
	2E3Oi9ZVfEn5gadnXiZatFjjKIWAWOy7wv53jv+jc1B4rIEg==
X-Google-Smtp-Source: AGHT+IEG3dgumjJIE+/2hVS1KaKx3ReuZO7/0XQOxhu9jz3Vm7ibzwpmPQVq++dxbfOUgRyZQaUYuA==
X-Received: by 2002:a05:690e:16a0:b0:63f:b5d8:9da0 with SMTP id 956f58d0204a3-64302a427c3mr13653691d50.22.1764202762923;
        Wed, 26 Nov 2025 16:19:22 -0800 (PST)
Received: from BYAPR10MB3366.namprd10.prod.outlook.com ([2603:1036:307:294f::5])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78a799409f6sm71893747b3.45.2025.11.26.16.19.21
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 16:19:22 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: [PATCH] man3/getgrnam: clarify possible errno values when entry not
 found
Thread-Topic: [PATCH] man3/getgrnam: clarify possible errno values when entry
 not found
Thread-Index: AQHcXzKAWp+rm+YIi0WF8SgHpBM9Zg==
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Thu, 27 Nov 2025 00:19:20 +0000
Message-ID:
	<BYAPR10MB33664883B12034BFE939B74EAEDFA@BYAPR10MB3366.namprd10.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator:
X-MS-Exchange-Organization-RecordReviewCfmType: 0
msip_labels:
Content-Type: multipart/mixed;
	boundary="_004_BYAPR10MB33664883B12034BFE939B74EAEDFABYAPR10MB3366namp_"
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

--_004_BYAPR10MB33664883B12034BFE939B74EAEDFABYAPR10MB3366namp_
Content-Type: multipart/alternative;
	boundary="_000_BYAPR10MB33664883B12034BFE939B74EAEDFABYAPR10MB3366namp_"

--_000_BYAPR10MB33664883B12034BFE939B74EAEDFABYAPR10MB3366namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

man3/getgrnam: clarify possible errno values when entry not found

Update ERRORS section to clearly separate the POSIX-mandated '0' return for=
 'not found' from the various non-POSIX errno values encountered in differe=
nt UNIX implementations.

Signed-off-by: Simon Essien <champbreed1@gmail.com>

--_000_BYAPR10MB33664883B12034BFE939B74EAEDFABYAPR10MB3366namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
man3/getgrnam: clarify possible errno values when entry not found</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Update ERRORS section to clearly separate the POSIX-mandated '0' return for=
 'not found' from the various non-POSIX errno values encountered in differe=
nt UNIX implementations.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Signed-off-by: Simon Essien &lt;champbreed1@gmail.com&gt;</div>
</body>
</html>

--_000_BYAPR10MB33664883B12034BFE939B74EAEDFABYAPR10MB3366namp_--

--_004_BYAPR10MB33664883B12034BFE939B74EAEDFABYAPR10MB3366namp_
Content-Type: application/octet-stream;
	name="0001-man3-getgrnam-clarify-possible-errno-values-when-ent.patch"
Content-Description:
	0001-man3-getgrnam-clarify-possible-errno-values-when-ent.patch
Content-Disposition: attachment;
	filename="0001-man3-getgrnam-clarify-possible-errno-values-when-ent.patch";
	size=4264; creation-date="Thu, 27 Nov 2025 00:18:52 GMT";
	modification-date="Thu, 27 Nov 2025 00:19:20 GMT"
Content-Transfer-Encoding: base64

RnJvbSBhZDJlMTkzZTQ5M2JjYzI1ZDI1Nzg5ZDlkNjUxODY0ZDM3YWNjOTlmIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTaW1vbiBFc3NpZW4gPGNoYW1wYnJlZWQxQGdtYWlsLmNvbT4K
RGF0ZTogV2VkLCAyNiBOb3YgMjAyNSAyMzo0ODo0MiArMDAwMApTdWJqZWN0OiBbUEFUQ0hdIG1h
bjMvZ2V0Z3JuYW06IGNsYXJpZnkgcG9zc2libGUgZXJybm8gdmFsdWVzIHdoZW4gZW50cnkgbm90
CiBmb3VuZAoKVXBkYXRlIEVSUk9SUyBzZWN0aW9uIHRvIGNsZWFybHkgc2VwYXJhdGUgdGhlIFBP
U0lYLW1hbmRhdGVkICcwJyByZXR1cm4gZm9yICdub3QgZm91bmQnIGZyb20gdGhlIHZhcmlvdXMg
bm9uLVBPU0lYIGVycm5vIHZhbHVlcyBlbmNvdW50ZXJlZCBpbiBkaWZmZXJlbnQgVU5JWCBpbXBs
ZW1lbnRhdGlvbnMuCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBFc3NpZW4gPGNoYW1wYnJlZWQxQGdt
YWlsLmNvbT4KLS0tCiBtYW4vbWFuMy9nZXRncm5hbS4zIHwgNDEgKysrKysrKysrKysrKysrKysr
KysrKy0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCsp
LCAxOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9tYW4vbWFuMy9nZXRncm5hbS4zIGIvbWFu
L21hbjMvZ2V0Z3JuYW0uMwppbmRleCA3ZDYzNjVjYWEuLjUzZTI2ZWMxNyAxMDA2NDQKLS0tIGEv
bWFuL21hbjMvZ2V0Z3JuYW0uMworKysgYi9tYW4vbWFuMy9nZXRncm5hbS4zCkBAIC0xOCwxNCAr
MTgsMTQgQEAgU3RhbmRhcmQgQyBsaWJyYXJ5CiAuQkkgInN0cnVjdCBncm91cCAqZ2V0Z3JnaWQo
Z2lkX3QgIiBnaWQgKTsKIC5QCiAuQlIgImludCBnZXRncm5hbV9yKCIgInNpemVfdCBzaXplOyIK
LS5CSSAiICAgICAgICAgICAgICAgY29uc3QgY2hhciAqcmVzdHJpY3QgIiBuYW1lIFwKKy5CSSAi
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBjb25zdCBjaGFyICpyZXN0cmljdCAiIG5hbWUgXAogIiwg
c3RydWN0IGdyb3VwICpyZXN0cmljdCAiIGdycCAsCi0uQkkgIiAgICAgICAgICAgICAgIGNoYXIg
IiBidWYgIltyZXN0cmljdCAiIHNpemUgIl0sIHNpemVfdCAiIHNpemUgLAotLkJJICIgICAgICAg
ICAgICAgICBzdHJ1Y3QgZ3JvdXAgKipyZXN0cmljdCAiIHJlc3VsdCApOworLkJJICLCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoGNoYXIgIiBidWYgIltyZXN0cmljdCAiIHNpemUgIl0sIHNpemVfdCAi
IHNpemUgLAorLkJJICLCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN0cnVjdCBncm91cCAqKnJlc3Ry
aWN0ICIgcmVzdWx0ICk7CiAuQlIgImludCBnZXRncmdpZF9yKCIgInNpemVfdCBzaXplOyIKLS5C
SSAiICAgICAgICAgICAgICAgZ2lkX3QgIiBnaWQgIiwgc3RydWN0IGdyb3VwICpyZXN0cmljdCAi
IGdycCAsCi0uQkkgIiAgICAgICAgICAgICAgIGNoYXIgIiBidWYgIltyZXN0cmljdCAiIHNpemUg
Il0sIHNpemVfdCAiIHNpemUgLAotLkJJICIgICAgICAgICAgICAgICBzdHJ1Y3QgZ3JvdXAgKipy
ZXN0cmljdCAiIHJlc3VsdCApOworLkJJICLCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGdpZF90ICIg
Z2lkICIsIHN0cnVjdCBncm91cCAqcmVzdHJpY3QgIiBncnAgLAorLkJJICLCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoGNoYXIgIiBidWYgIltyZXN0cmljdCAiIHNpemUgIl0sIHNpemVfdCAiIHNpemUg
LAorLkJJICLCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN0cnVjdCBncm91cCAqKnJlc3RyaWN0ICIg
cmVzdWx0ICk7CiAuZmkKIC5QCiAuUlMgLTQKQEAgLTM2LDggKzM2LDggQEAgRmVhdHVyZSBUZXN0
IE1hY3JvIFJlcXVpcmVtZW50cyBmb3IgZ2xpYmMgKHNlZQogLkJSIGdldGdybmFtX3IgKCksCiAu
QlIgZ2V0Z3JnaWRfciAoKToKIC5uZgotICAgIF9QT1NJWF9DX1NPVVJDRQotICAgICAgICB8fCAv
KiBnbGliYyA8PSAyLjE5OiAqLyBfQlNEX1NPVVJDRSB8fCBfU1ZJRF9TT1VSQ0UKK8KgIMKgIF9Q
T1NJWF9DX1NPVVJDRQorwqAgwqAgwqAgwqAgfHwgLyogZ2xpYmMgPD0gMi4xOTogKi8gX0JTRF9T
T1VSQ0UgfHwgX1NWSURfU09VUkNFCiAuZmkKIC5TSCBERVNDUklQVElPTgogVGhlCkBAIC02Niwx
MSArNjYsMTEgQEAgYXMgZm9sbG93czoKIC5pbiArNG4KIC5FWAogc3RydWN0IGdyb3VwIHsKLSAg
ICBjaGFyICAgKmdyX25hbWU7ICAgICAgICAvKiBncm91cCBuYW1lICovCi0gICAgY2hhciAgICpn
cl9wYXNzd2Q7ICAgICAgLyogZ3JvdXAgcGFzc3dvcmQgKi8KLSAgICBnaWRfdCAgIGdyX2dpZDsg
ICAgICAgICAvKiBncm91cCBJRCAqLwotICAgIGNoYXIgICoqZ3JfbWVtOyAgICAgICAgIC8qIE5V
TExcLXRlcm1pbmF0ZWQgYXJyYXkgb2YgcG9pbnRlcnMKLSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB0byBuYW1lcyBvZiBncm91cCBtZW1iZXJzICovCivCoCDCoCBjaGFywqAgwqAqZ3Jf
bmFtZTvCoCDCoCDCoCDCoCAvKiBncm91cCBuYW1lICovCivCoCDCoCBjaGFywqAgwqAqZ3JfcGFz
c3dkO8KgIMKgIMKgIC8qIGdyb3VwIHBhc3N3b3JkICovCivCoCDCoCBnaWRfdMKgIMKgZ3JfZ2lk
O8KgIMKgIMKgIMKgIMKgLyogZ3JvdXAgSUQgKi8KK8KgIMKgIGNoYXLCoCAqKmdyX21lbTvCoCDC
oCDCoCDCoCDCoC8qIE5VTExcLXRlcm1pbmF0ZWQgYXJyYXkgb2YgcG9pbnRlcnMKK8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgdG8gbmFtZXMgb2YgZ3JvdXAg
bWVtYmVycyAqLwogfTsKIC5FRQogLmluCkBAIC0xNTcsMTIgKzE1NywxNSBAQCBJbiBjYXNlIG9m
IGVycm9yLCBhbiBlcnJvciBudW1iZXIgaXMgcmV0dXJuZWQsIGFuZCBOVUxMIGlzIHN0b3JlZCBp
bgogLklSICpyZXN1bHQgLgogLlNIIEVSUk9SUwogLlRQCi0uQlIgMCAiIG9yICIgRU5PRU5UICIg
b3IgIiBFU1JDSCAiIG9yICIgRUJBREYgIiBvciAiIEVQRVJNICIgb3IgLi4uIgorLkJSIDAKK05v
IG1hdGNoaW5nIGdyb3VwIHJlY29yZCB3YXMgZm91bmQsIG9yIG5vIGVycm9yIG9jY3VycmVkIChQ
T1NJWCBiZWhhdmlvcikuCisuVFAKKy5CIEVOT0VOVCAiLCAiIEVTUkNIICIsICIgRUJBREYgIiwg
IiBFUEVSTSAiLCBvciBvdGhlciB2YWx1ZXMiCiBUaGUgZ2l2ZW4KIC5JIG5hbWUKIG9yCiAuSSBn
aWQKLXdhcyBub3QgZm91bmQuCit3YXMgbm90IGZvdW5kLiAoU29tZSBVTklYIGltcGxlbWVudGF0
aW9ucyBzZXQgZXJybm8gaW4gdGhpcyBjYXNlLikKIC5UUAogLkIgRUlOVFIKIEEgc2lnbmFsIHdh
cyBjYXVnaHQ7CkBAIC0xOTgsMTIgKzIwMSwxMiBAQCBGb3IgYW4gZXhwbGFuYXRpb24gb2YgdGhl
IHRlcm1zIHVzZWQgaW4gdGhpcyBzZWN0aW9uLCBzZWUKIGFsbGJveDsKIGxiIGxiIGxieAogbCBs
IGwuCi1JbnRlcmZhY2UJQXR0cmlidXRlCVZhbHVlCitJbnRlcmZhY2XCoCDCoCDCoCDCoEF0dHJp
YnV0ZcKgIMKgIMKgIMKgVmFsdWUKIFR7CiAubmEKIC5uaAogLkJSIGdldGdybmFtICgpCi1UfQlU
aHJlYWQgc2FmZXR5CVR7CitUfcKgIMKgIMKgIFRocmVhZCBzYWZldHnCoCDCoFR7CiAubmEKIC5u
aAogTVQtVW5zYWZlIHJhY2U6Z3JuYW0gbG9jYWxlCkBAIC0yMTIsNyArMjE1LDcgQEAgVHsKIC5u
YQogLm5oCiAuQlIgZ2V0Z3JnaWQgKCkKLVR9CVRocmVhZCBzYWZldHkJVHsKK1R9wqAgwqAgwqAg
VGhyZWFkIHNhZmV0ecKgIMKgVHsKIC5uYQogLm5oCiBNVC1VbnNhZmUgcmFjZTpncmdpZCBsb2Nh
bGUKQEAgLTIyMiw3ICsyMjUsNyBAQCBUewogLm5oCiAuQlIgZ2V0Z3JuYW1fciAoKSwKIC5CUiBn
ZXRncmdpZF9yICgpCi1UfQlUaHJlYWQgc2FmZXR5CU1ULVNhZmUgbG9jYWxlCitUfcKgIMKgIMKg
IFRocmVhZCBzYWZldHnCoCDCoE1ULVNhZmUgbG9jYWxlCiAuVEUKIC5TSCBWRVJTSU9OUwogVGhl
IGZvcm11bGF0aW9uIGdpdmVuIGFib3ZlIHVuZGVyICJSRVRVUk4gVkFMVUUiIGlzIGZyb20gUE9T
SVguMS4KLS0gCjIuNTAuMQoK

--_004_BYAPR10MB33664883B12034BFE939B74EAEDFABYAPR10MB3366namp_--

