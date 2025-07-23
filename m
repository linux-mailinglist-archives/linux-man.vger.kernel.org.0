Return-Path: <linux-man+bounces-3289-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DB73BB0F816
	for <lists+linux-man@lfdr.de>; Wed, 23 Jul 2025 18:27:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23F271CC31FA
	for <lists+linux-man@lfdr.de>; Wed, 23 Jul 2025 16:27:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48EAB1F09A3;
	Wed, 23 Jul 2025 16:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="OcLWl4qq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A850245009
	for <linux-man@vger.kernel.org>; Wed, 23 Jul 2025 16:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753288026; cv=none; b=idMOc6kyAgJdD6rEEWE8K14laeC6qW8RhiRE/KHhMbB8eYV6sdhKsqR+muo/0+EGI8VVU38USji+lkfMdbCqv+mq8bRlbRNrrl+rM2WX9nrYPGaM6hTWJ9eJ5lyqKxcGJRBgeoBTuwx9aYx0M9V8GaKB+URlB353Eh80tSocPoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753288026; c=relaxed/simple;
	bh=NsaGTEHlDUh4Prhd8F5/4e/iiNUUcqrKOg5RFGbBcv4=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=ILOV/N95J2iHoE9WHYAo1+3LfuDvOHAU1rYdVS65LHnsgJQJJZiZf/arTG1AsUYV8l1yyyFhlyjxwIoPfQu9Gz+laAbv/IW244xCaWh6TzvyLC15JyQMchAPrkt2exvPwtZlQHYgUsB+4AeuKdAxCk/50DMM59LCDO8wW7/RKyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=OcLWl4qq; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-303058a8649so56317fac.3
        for <linux-man@vger.kernel.org>; Wed, 23 Jul 2025 09:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1753288023; x=1753892823; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uV1YE/kj9Te+B7sekaDTzeGes6glHD0IHYa9X5VT1iI=;
        b=OcLWl4qqjb2gw9JTnKrE/S76xF4GIMBhe3Yt7T7BGvfJ0526+utkkVXp7xjdh5gYH6
         JoM5lp/99JXQvAzyRZMpgDGDiARhx3U2GKaW3fKCNdJtnSEYA0HekFMZfNEk5NFJdDnk
         wWnm1w5rIlLE0/Yr7ASgMHN41dK7/45TUrKRXFDietNvJS0aWNWQ98CrysBPH6zM9A+T
         N9NbWLwE8DHNbhGr5kadsh2Ja5k+PCU/CfRdnlfyz4GymRpnjLCngkuMFCxXyfzwFoOS
         aqrjMeeCSNDYzqnHGj+cEKzVIgBmS/k74ZRtGLEv+CIxQlEfmTD9AB+Gp47A55kj5g9Z
         P+sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753288023; x=1753892823;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uV1YE/kj9Te+B7sekaDTzeGes6glHD0IHYa9X5VT1iI=;
        b=jtUQz96qpZ60hsyBbLEU2ZIy++XaTR6FiH1bGEXNworTO87JXUt0bfZ42MZRjeRRPb
         6ayLAhmBi+UI2+DhPHedOMHZkMR20ua76AcDoyJoN+rUNITcuL/wowDrqAzl03FRpf8p
         zoWhhxSyZXcy4aGBEIRqE1Xt/oSiMEu5U8zCztWAmJ+6SQ4zvreRywinJNeY56hajZku
         4rIJxccLQwilKOCbyTwO54srVJRBjq7/HkLX2OTjQZW9LqhjN4jB2MPgVnnAijcsNHyt
         293/mYWRryC3EeiGSc16Vzrv66tz3N8kNdqrqwK2JIUyOKVlQpSyYbtVOZ+5AZCYdYUF
         4Acw==
X-Gm-Message-State: AOJu0Yz9hAsehX9b6ikNrCw1YPg7co/DVs75fOO6WhMYVWjDQCevpoSO
	fjScr1n2bXQXVzaOzoMRXf7P8C8Az/MSur6fI/ufA21lPcFJSn6UeYeLQES+BpsHdgLMsgEd15j
	JW1jDpG/VJPMVYfKWhoBKdv2jZt490dKlGmFQby2EBfPFywna+PtUxw/Gx1Y=
X-Gm-Gg: ASbGncuZIk/hlktv9rYURHE0ZGFDTpY/fe6rc2AntpGbsdxZJ3q9o/brXtnCuUi9Kwy
	62Az9OVjS1RV3N5o/2zVGZMaa0ZeONRlEqJY+4Hu9guVo6jGQ/pjXRYk+BS0h6X2NLPRNAmEQlp
	6D8dpNUckPjXhfSZFGc1SBYyT5PKf/34vahyRNPYwrihtprf8fa6mz0KGxOHu9o9/hN2K+Uem+/
	Mfo
X-Google-Smtp-Source: AGHT+IFWXmTnTOYHWhjN/FiujhP4ZRDiakm4/gSOAAmWvlSVQGwaILPOJ17f06f5xvauGe43EtwkmHTXpbSYSAEw+0c=
X-Received: by 2002:a05:6871:e419:b0:306:a149:f4c0 with SMTP id
 586e51a60fabf-306c71fcdcamr2552511fac.23.1753288023189; Wed, 23 Jul 2025
 09:27:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: enh <enh@google.com>
Date: Wed, 23 Jul 2025 12:26:51 -0400
X-Gm-Features: Ac12FXwPBEyj2dmXOuY2xcSsOJvmdLTTLvXauUOA6LJY8gByxPGzlLpXs3RfbEg
Message-ID: <CAJgzZorPGQh1KB0aaW+E=+CBX_YoeOVP_uctxCwWQPNOb0uUNg@mail.gmail.com>
Subject: [PATCH] strcpy.3: simplify stpcpy().
To: linux-man <linux-man@vger.kernel.org>, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: multipart/mixed; boundary="000000000000d0d882063a9b2d8f"

--000000000000d0d882063a9b2d8f
Content-Type: text/plain; charset="UTF-8"

---
 man/man3/strcpy.3 | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

--000000000000d0d882063a9b2d8f
Content-Type: application/octet-stream; 
	name="0001-strcpy.3-simplify-stpcpy.patch"
Content-Disposition: attachment; 
	filename="0001-strcpy.3-simplify-stpcpy.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_mdg6er740>
X-Attachment-Id: f_mdg6er740

RnJvbSA1YmM4MTAzMDlkOTZkYjc3MzhlNzU3NWEzNDdkZTFmMjNjN2IzYzViIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBFbGxpb3R0IEh1Z2hlcyA8ZW5oQGdvb2dsZS5jb20+CkRhdGU6
IFdlZCwgMjMgSnVsIDIwMjUgMTY6MjQ6NDUgKzAwMDAKU3ViamVjdDogW1BBVENIXSBzdHJjcHku
Mzogc2ltcGxpZnkgc3RwY3B5KCkuCgotLS0KIG1hbi9tYW4zL3N0cmNweS4zIHwgNyArLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvbWFuL21hbjMvc3RyY3B5LjMgYi9tYW4vbWFuMy9zdHJjcHkuMwppbmRleCBjZmMxM2M5
MTQuLjdmYmE1ODY2ZCAxMDA2NDQKLS0tIGEvbWFuL21hbjMvc3RyY3B5LjMKKysrIGIvbWFuL21h
bjMvc3RyY3B5LjMKQEAgLTYyLDEyICs2Miw3IEBAIC5TSCBERVNDUklQVElPTgogY2hhciAqCiBz
dHBjcHkoY2hhciAqcmVzdHJpY3QgZHN0LCBjb25zdCBjaGFyICpyZXN0cmljdCBzcmMpCiB7Ci0g
ICAgY2hhciAgKnA7Ci1cJgotICAgIHAgPSBtZW1wY3B5KGRzdCwgc3JjLCBzdHJsZW4oc3JjKSk7
Ci0gICAgKnAgPSBcW2FxXVxbcnNdMFxbYXFdOwotXCYKLSAgICByZXR1cm4gcDsKKyAgICByZXR1
cm4gbWVtcGNweShkc3QsIHNyYywgc3RybGVuKHNyYykgKyAxKTsKIH0KIFwmCiBjaGFyICoKLS0g
CjIuNTAuMC43MjcuZ2JmN2RjMThmZjQtZ29vZwoK
--000000000000d0d882063a9b2d8f--

