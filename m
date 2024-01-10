Return-Path: <linux-man+bounces-347-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3208298C4
	for <lists+linux-man@lfdr.de>; Wed, 10 Jan 2024 12:21:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6ABCC286735
	for <lists+linux-man@lfdr.de>; Wed, 10 Jan 2024 11:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D71F4779A;
	Wed, 10 Jan 2024 11:21:13 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cstnet.cn (smtp37.cstnet.cn [159.226.251.37])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F424776F
	for <linux-man@vger.kernel.org>; Wed, 10 Jan 2024 11:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iie.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iie.ac.cn
Received: from mengjingzi$iie.ac.cn ( [114.245.34.24] ) by
 ajax-webmail-APP-12 (Coremail) ; Wed, 10 Jan 2024 19:12:49 +0800
 (GMT+08:00)
Date: Wed, 10 Jan 2024 19:12:49 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: =?UTF-8?B?5a2f5pWs5ae/?= <mengjingzi@iie.ac.cn>
To: linux-man@vger.kernel.org
Cc: alx.manpages@gmail.com, mtk.manpages@gmail.com
Subject: Recommendation for Adjusting Command Categorization in Manual Pages
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.15 build 20230921(8ad33efc)
 Copyright (c) 2002-2024 www.mailtech.cn cnic.cn
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <4199785d.2f13.18cf3132e26.Coremail.mengjingzi@iie.ac.cn>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:tgCowAAHf8+ye55lFUsEAA--.51786W
X-CM-SenderInfo: pphqwyxlqj6xo6llvhldfou0/1tbiBg0ME2WeMoLrPwAAsL
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=

SGkhIEkgaG9wZSB0aGlzIG1lc3NhZ2UgZmluZHMgeW91IHdlbGwuCgpXZSBoYXZlIGlkZW50aWZp
ZWQgYW4gaXNzdWUgaW4gdGhlIGNhdGVnb3JpemF0aW9uIApvZiBjZXJ0YWluIGNvbW1hbmRzIGlu
IHRoZSBtYW4tcGFnZXMgYW5kIHdvdWxkIGxpa2UgCnRvIGJyaW5nIGl0IHRvIHlvdXIgYXR0ZW50
aW9uLgoKVXBvbiB0ZXN0aW5nIG9uIERlYmlhbiAxMSwgd2Ugb2JzZXJ2ZWQgZGlzY3JlcGFuY2ll
cyAKYmV0d2VlbiB0aGUgc3RhdGVkIHByaXZpbGVnZSByZXF1aXJlbWVudHMgaW4gdGhlIG1hbnVh
bCAKcGFnZXMgYW5kIHRoZSBhY3R1YWwgYmVoYXZpb3Igb2Ygc29tZSBjb21tYW5kcy4gCgpBY2Nv
cmRpbmcgdG8gdGhlIGludHJvZHVjdGlvbiBwYWdlcywgY29tbWFuZHMgaW4gc2VjdGlvbiAKOCBy
ZXF1aXJlIHN1cGVydXNlciBwcml2aWxlZ2VzIHRvIHJ1biwgYnV0IHdlIGZvdW5kIHNvbWUgCmNv
bW1hbmRzIHRoYXQgZG8gbm90IG5lY2Vzc2l0YXRlIHN1cGVydXNlciBwcml2aWxlZ2VzIGZvciAK
ZXhlY3V0aW9uOgpsbnN0YXQsIGZpbmRmcywgYmxraWQsIGxzYmxrLCBsc21vZCwgbHNwY2ksIG1v
ZGluZm8sIAppc29zaXplLCBsYXN0bG9nLCB0enNlbGVjdCwgemR1bXAsIGdldGNhcCwgZ2V0cGNh
cHMsIApta2xvc3RfZm91bmQsIHRyYWNlcGF0aC4KClRoZXNlIGNvbW1hbmRzIHByZWRvbWluYW50
bHkgcXVlcnkgc3lzdGVtIGluZm9ybWF0aW9uIGFuZCAKZG8gbm90IGludm9sdmUgc2Vuc2l0aXZl
IHJlc291cmNlcy4KRm9yIGV4YW1wbGUsIGxuc3RhdCBwcmludCBMaW51eCBuZXR3b3JrIHN0YXRp
c3RpY3MsIHRoZSAKc3RhdGljcyBjb21lcyBmcm9tIC9wcm9jL25ldC9zdGF0IHdoaWNoIGNvdWxk
IGJlIHJlYWQgYnkgCmFueW9uZS4gTGFzdGxvZyByZXBvcnRzIHRoZSBtb3N0IHJlY2VudCBsb2dp
biB1c2VycywgdGhlIApzaW1pbGFyIGNvbW1hbmRzIGxpa2UgbGFzdCwgcHJpbnRreSBhbmQgdXNl
cnMgYXJlIGFsbCBpbiAKc2VjdGlvbiAxLiBBbmQgaXQgaXMgY2xlYXJseSBzdGF0ZWQgaW4gdHJh
Y2VwYXRoKDgpIHRoYXQgCnRoZSBjb21tYW5kIGRvZXMgbm90IHJlcXVpcmUgc3VwZXJ1c2VyIHBy
aXZpbGVnZXMuCgpUaGUgaW50cm9kdWN0aW9uIG9mIHNlY3Rpb24gMSBjbGFpbXMgdGhhdCB0aG9z
ZSBjb21tYW5kcyAKdG8gYmUgdXNlciBjb21tYW5kcywgYnV0IHNvbWUgY29tbWFuZHMgcmVxdWly
ZSBzdXBlcnVzZXIgCnByaXZpbGVnZXMgdG8gcnVuOiAKZHVtcGtleXMsIGZnY29uc29sZSwga2Jk
aW5kbywga2JkX21vZGUsIHNob3drZXksIApkZWFsbG9jdnQsIHRjcGR1bXAsIGNoYWdlLCBncGFz
c3dkLCBtZXNnLCBta2ZpZm8uCgpUaGVzZSBjb21tYW5kcyBtYW5pcHVsYXRlIHNwZWNpYWwgcmVz
b3VyY2VzIGxpa2Uga2V5Ym9hcmRzLCAKdmlydHVhbCB0ZXJtaW5hbHMgYW5kIHBpcGVzLiBOb3Rh
Ymx5LCB0Y3BkdW1wIGV4aXN0cyBpbiBib3RoIApTZWN0aW9uIDEgYW5kIFNlY3Rpb24gOCwgYnV0
IGl0IGNhbiBvbmx5IGJlIHVzZWQgd2l0aCBwcml2aWxlZ2VzLgoKVG8gZW5oYW5jZSBjbGFyaXR5
IGFuZCBhbGlnbiB3aXRoIHRoZSBpbnRlbmRlZCBwcml2aWxlZ2UgCnJlcXVpcmVtZW50cywgd2Ug
cmVjb21tZW5kIGFkanVzdGluZyB0aGUgY2F0ZWdvcml6YXRpb24gb2YgdGhlc2UKY29tbWFuZHMu
IFRoaXMgYWRqdXN0bWVudCB3aWxsIGVuc3VyZSB0aGF0IHVzZXJzIHJlZmVycmluZyB0byAKdGhl
IG1hbnVhbCBwYWdlcyBjYW4gYWNjdXJhdGVseSBjb25maWd1cmUgY29tbWFuZCBwZXJtaXNzaW9u
cyAKd2l0aG91dCB1bm5lY2Vzc2FyeSB1c2Ugb2YgcHJpdmlsZWdlcyBhbmQgY29udHJpYnV0ZSB0
byBhIG1vcmUgCmludHVpdGl2ZSBhbmQgYWNjdXJhdGUgbWFudWFsIHBhZ2Ugc3RydWN0dXJlLgoK
QmVzdCByZWdhcmRzLApKaW5nemk=

