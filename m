Return-Path: <linux-man+bounces-74-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFAD7EA7DF
	for <lists+linux-man@lfdr.de>; Tue, 14 Nov 2023 01:51:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 700F8B20A20
	for <lists+linux-man@lfdr.de>; Tue, 14 Nov 2023 00:51:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A7824423;
	Tue, 14 Nov 2023 00:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="3VzHA0ip"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42FC4412
	for <linux-man@vger.kernel.org>; Tue, 14 Nov 2023 00:51:18 +0000 (UTC)
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com [IPv6:2607:f8b0:4864:20::f2d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE4D5D53
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 16:51:17 -0800 (PST)
Received: by mail-qv1-xf2d.google.com with SMTP id 6a1803df08f44-66d190a8f87so30085266d6.0
        for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 16:51:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1699923077; x=1700527877; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0tDCHORQa0r3ALkdhyMYFHWUDLrwO6have0dnKk8+FU=;
        b=3VzHA0ipyoFnKhhgf0iqh/mY7cgsiKfKDVxfxh4Vm/x/t7qwKP7nYuagjPZ7ST82Dp
         hATTY7al2Z+xnxlYOcID+V7I44yivzZCnvRDQX20O1/o1rCghfLwa8F1rD5k9j4GFYfw
         BoApe+CwTv5ERTvlyuG3005NdUu2C3Q9MX718rZps/H/zMwYynVIgf4xbtzyRZjjKTV7
         stjd4ZHFnM+9cBWdsAlYQdCReEapR78XQM1DrhIUN18YC7TW48YZACBGchrG36KkzVn3
         xYnfXWnMVGvUW6nWJXAdZK5cTm0Le2BhyRceIZlYAfriVtgA7tHBemh0503WRXqsYFC6
         WHdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699923077; x=1700527877;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0tDCHORQa0r3ALkdhyMYFHWUDLrwO6have0dnKk8+FU=;
        b=e/liqhvbpc6twPnRNf/UaOJDIk2eE0sCgLX9P2OC6CPq63KlFeRPgG+a0bLHK4Viqw
         Lw5YA8VAtJD+bay67nZYhpdKCVLPaQBMJH0HeQ67gZVjNxUO7sg8p0SWEoe+XibDC11d
         XvjvDBqp1AhummhC1L5tGtpI/Z9Swu5jCp4DSDePbhdCaMl1payF9d79/xseFkFoejOs
         dCR1pFxoYyL3fT0W0hCyckc+gaV+fUAy8SiXdAXbcCmL2RnIpHPOShxQLzjH6wVCfGro
         zGNyYcyCcP0AiMSCVmmrm40GXW3Pz0EEj0EHLj3zYWfC+iEglgBiBK2LCoZg299+w6gz
         eAkw==
X-Gm-Message-State: AOJu0YxN6f4d+vDnw+IzQjjf4o1mrt7S/e5nV98s6kzp3EZn5f9a4K3X
	6Tw/CKFTu4ICavlLopKXi3SAmYyleln94coPy1erK/G7pj8guyav+AZu8SL7
X-Google-Smtp-Source: AGHT+IEtriReC/8D/lXNWmMZPX4/qyBXWbhOLvYamM7A1qd03IsHNx0VUJjY4pg91ZvvLsTWClRF6DKd1Id2EYHBbYg=
X-Received: by 2002:ad4:59c3:0:b0:66d:5dec:6099 with SMTP id
 el3-20020ad459c3000000b0066d5dec6099mr824834qvb.41.1699923076639; Mon, 13 Nov
 2023 16:51:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: enh <enh@google.com>
Date: Mon, 13 Nov 2023 16:51:00 -0800
Message-ID: <CAJgzZorddCz168wpwWTkq61eBxrU6C7iU2cUcWooUS7E8N8DWQ@mail.gmail.com>
Subject: [PATCH] ffs.3: all these functions live in <strings.h>.
To: linux-man <linux-man@vger.kernel.org>, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: multipart/mixed; boundary="00000000000021c636060a122fd1"

--00000000000021c636060a122fd1
Content-Type: text/plain; charset="UTF-8"

In most cases you'll get them transitively through <string.h>, but it's
misleading for the man page to claim that they're _in_ <string.h>, and
especially weird to claim they're in _different_ headers from each
other!

This is also true of Apple's headers, and FreeBSD (the other BSDs only
have ffs(), not its siblings).

Signed-off-by: Elliott Hughes <enh@google.com>
---
 man3/ffs.3 | 6 ------
 1 file changed, 6 deletions(-)

--00000000000021c636060a122fd1
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-ffs.3-all-these-functions-live-in-strings.h.patch"
Content-Disposition: attachment; 
	filename="0001-ffs.3-all-these-functions-live-in-strings.h.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_loxmapnc0>
X-Attachment-Id: f_loxmapnc0

RnJvbSAyODYyYjRjOTRjMDFmZGE2MzlmYzFkZDFmYjk0NDc5ZWVlMTcxMmI5IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBFbGxpb3R0IEh1Z2hlcyA8ZW5oQGdvb2dsZS5jb20+CkRhdGU6
IE1vbiwgMTMgTm92IDIwMjMgMTY6NDY6NDMgLTA4MDAKU3ViamVjdDogW1BBVENIXSBmZnMuMzog
YWxsIHRoZXNlIGZ1bmN0aW9ucyBsaXZlIGluIDxzdHJpbmdzLmg+LgoKSW4gbW9zdCBjYXNlcyB5
b3UnbGwgZ2V0IHRoZW0gdHJhbnNpdGl2ZWx5IHRocm91Z2ggPHN0cmluZy5oPiwgYnV0IGl0J3MK
bWlzbGVhZGluZyBmb3IgdGhlIG1hbiBwYWdlIHRvIGNsYWltIHRoYXQgdGhleSdyZSBfaW5fIDxz
dHJpbmcuaD4sIGFuZAplc3BlY2lhbGx5IHdlaXJkIHRvIGNsYWltIHRoZXkncmUgaW4gX2RpZmZl
cmVudF8gaGVhZGVycyBmcm9tIGVhY2gKb3RoZXIhCgpUaGlzIGlzIGFsc28gdHJ1ZSBvZiBBcHBs
ZSdzIGhlYWRlcnMsIGFuZCBGcmVlQlNEICh0aGUgb3RoZXIgQlNEcyBvbmx5CmhhdmUgZmZzKCks
IG5vdCBpdHMgc2libGluZ3MpLgoKU2lnbmVkLW9mZi1ieTogRWxsaW90dCBIdWdoZXMgPGVuaEBn
b29nbGUuY29tPgotLS0KIG1hbjMvZmZzLjMgfCA2IC0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbWFuMy9mZnMuMyBiL21hbjMvZmZzLjMKaW5kZXgg
NWE1ZTFjMjFjLi5hYWI1ZjEwOTkgMTAwNjQ0Ci0tLSBhL21hbjMvZmZzLjMKKysrIGIvbWFuMy9m
ZnMuMwpAQCAtMjIsOSArMjIsNiBAQCBTdGFuZGFyZCBDIGxpYnJhcnkKIC5CICNpbmNsdWRlIDxz
dHJpbmdzLmg+CiAuUAogLkJJICJpbnQgZmZzKGludCAiIGkgKTsKLS5QCi0uQiAjaW5jbHVkZSA8
c3RyaW5nLmg+Ci0uUAogLkJJICJpbnQgZmZzbChsb25nICIgaSApOwogLkJJICJpbnQgZmZzbGwo
bG9uZyBsb25nICIgaSApOwogLmZpCkBAIC04Nyw5ICs4NCw2IEBAIFR7CiAuQlIgZmZzbGwgKCkK
IFR9CVRocmVhZCBzYWZldHkJTVQtU2FmZQogLlRFCi0uU0ggVkVSU0lPTlMKLUJTRCBzeXN0ZW1z
IGhhdmUgYSBwcm90b3R5cGUgaW4KLS5JUiA8c3RyaW5nLmg+IC4KIC5TSCBTVEFOREFSRFMKIC5U
UAogLkJSIGZmcyAoKQotLSAKMi40Mi4wLjg2OS5nZWEwNWYyMDgzZC1nb29nCgo=
--00000000000021c636060a122fd1--

