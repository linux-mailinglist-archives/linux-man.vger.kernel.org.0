Return-Path: <linux-man+bounces-3267-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C047B06649
	for <lists+linux-man@lfdr.de>; Tue, 15 Jul 2025 20:50:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E3265610EF
	for <lists+linux-man@lfdr.de>; Tue, 15 Jul 2025 18:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13E712BE649;
	Tue, 15 Jul 2025 18:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="PQMiF8xB"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D23E7261D
	for <linux-man@vger.kernel.org>; Tue, 15 Jul 2025 18:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752605420; cv=none; b=P3i7/cOnTexsjcAKP7VMf2WBAbhtGt5o4m/DNFA/TZYCYv+GZ8sF/BMqz1hguQ23GFgtKBkivhKaovDyAsDZeM4SGJW3o1NBj7qWP+SYdTVhbyLn931PigepwOO9WTK2KEdGTBJJmiysdEhA6SU9/88Y04jP7utkpUn4ITJ6y0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752605420; c=relaxed/simple;
	bh=wDDNu6Z3+MmmMsu9FNBHVF+v63/sohBirbpH5uZIdC0=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=nCC7MAXiw5rn7nIPDmFtDoj90OhQEuemXofOZ80K2d0JhznI3c5bt99YSBmhlGJVj3Q+R2mqcmfHr5qW4xfQpGhL/0Ys1bfg4hRrfv8dRQsARGGM+ZLHcNlkGbLlrOodOjBX0qNlGjU+4TCgSzORsJQO2EJNjEzwqjTPR6GG0kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=PQMiF8xB; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-73e650f3c31so30552a34.3
        for <linux-man@vger.kernel.org>; Tue, 15 Jul 2025 11:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1752605418; x=1753210218; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CGtrnErjBN/tKKYreTfr4s1xxmw8Q52MT02s+zh21JY=;
        b=PQMiF8xB2N6Os8mdaq9XtWhF9LIPnBShguwEnYbzK4/4/txKNmE60ERmBTh2U93sop
         1L1O5OLbNbZFr/1jUuEBm28eS6nOBBfNsj/StlsADYHmvDQIZnwuWBjKoWW9fAxTibpc
         aE/xaZSlHpAF+AqyF7fR7LgB9Z6PbGOceFe2DB+VpGBTxc9qX1E6nN4nWvJogtCN0H2m
         UOzkKa9ceTUNLd9R6F0Tj5IXToIu4CLV+aB7NH+KSWCtbPfC/kAmTk/lvSuwyrlsGyNn
         WDTNRX3+Z1xydmGYS857GC4Xrua6opKjaKWKildLciahow9p4mz5yKfxOo83JLhqv972
         9rIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752605418; x=1753210218;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CGtrnErjBN/tKKYreTfr4s1xxmw8Q52MT02s+zh21JY=;
        b=JZoO49yWS9cqVQLbPiD3RAXGFnqJ+IGE0IqU11bDBIYVmrcaW4SzpUuwzVwbnENyUi
         m66IITynkXHvNgYFSXTs2FwCUkqdEPMdiSyRc4DkB5fhilep+nPtmXW0KGiII/CcFzHY
         xEFVbMqVlxwmwGASmWa0Yyaqr036h2DqLwrBWWvKnLVQMWXBOtjH/ZP19qCt5xJTI4TB
         A3FvMasUM7orO3KbWseyscO7H8jlEocViyg7O0VZmFy7rxnCTGL1giGNq7oojZHK8i4n
         HllLz/bWxKFdQP8l75TZbEHOe744IsYAJt+L4mpxLCKQMY11/B6bLcFGFv/Bo6EKufK6
         G7qg==
X-Gm-Message-State: AOJu0Yzu0SIJ5pl55kx4w848augyAd8gx6/9gi2OFJj2MJLyN386xNGB
	MMnP6214gbkYgaJFIoNwEQpzne6jjThho8zYLBfuSSlWpSFYfPKdRBKcd6TJx5EwBK0GFbq1Lgb
	Votk9QIP0XOvcMCcch9Y1MUsEMAEOtUFGG9H/mr3VM5xvQ3tNI5JbLV9Jwbg=
X-Gm-Gg: ASbGncsWIQnNN9TuFYUdOR5iQUmXFYIueWJO4dYai8PlzyYCHECF0GoxPzHXw/1zC++
	AljbCgJUJXd2/qVbuNUWc/gpkgVPF9zFpNVRrHhNy4G9E5wcYyk1p3/OAEeTV6oFNaGtdqD27ww
	9lCd+lR9/+EkDenDMXRFUz+Bdc8cN7PAXQvoB18atk2/Wg6QJ8dEFyVqwVkWqv0FRRTAfMFZ7s9
	oHO
X-Google-Smtp-Source: AGHT+IFAATaBTYHbnIYE0+bXD5WSvQkeH5kLYHoS/WRQtZWkMIS7aive/YvsITUa94kAKTWwKeiHNdVFN11GRYHRNsU=
X-Received: by 2002:a05:6870:cb95:b0:2f3:e087:6aff with SMTP id
 586e51a60fabf-2ffaf4dcc78mr502352fac.24.1752605418247; Tue, 15 Jul 2025
 11:50:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: enh <enh@google.com>
Date: Tue, 15 Jul 2025 14:50:06 -0400
X-Gm-Features: Ac12FXy1Az9cI4828Ehe0czuUHsenMJw51F_8IlD5KSyJKgrs7UHQjQuTgbNa9I
Message-ID: <CAJgzZopjpJJY8F7khF6SN=-UuYPiR70vqOE4voaQz79U_HqhAQ@mail.gmail.com>
Subject: [PATCH] printf.3: mention Android's %m support.
To: linux-man <linux-man@vger.kernel.org>, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: multipart/mixed; boundary="000000000000636e100639fc3ff0"

--000000000000636e100639fc3ff0
Content-Type: text/plain; charset="UTF-8"

Unclear to me whether it would be useful to explicitly mention that it's
_not_ available on iOS/macOS and the BSDs, since that's the caveat I
usually give when recommending %m to people.

Technically this is available on Android from API level 29, if we wanted
to be more specific.
---
 man/man3/printf.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--000000000000636e100639fc3ff0
Content-Type: application/octet-stream; 
	name="0001-printf.3-mention-Android-s-m-support.patch"
Content-Disposition: attachment; 
	filename="0001-printf.3-mention-Android-s-m-support.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_md4vzra60>
X-Attachment-Id: f_md4vzra60

RnJvbSAzNWQ4ZGMwNDk1YTZjMDgwNTEyOTQ5ZTEyMmUxY2M2NThmMTZjNTgwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBFbGxpb3R0IEh1Z2hlcyA8ZW5oQGdvb2dsZS5jb20+CkRhdGU6
IFR1ZSwgMTUgSnVsIDIwMjUgMTg6NDI6NTYgKzAwMDAKU3ViamVjdDogW1BBVENIXSBwcmludGYu
MzogbWVudGlvbiBBbmRyb2lkJ3MgJW0gc3VwcG9ydC4KClVuY2xlYXIgdG8gbWUgd2hldGhlciBp
dCB3b3VsZCBiZSB1c2VmdWwgdG8gZXhwbGljaXRseSBtZW50aW9uIHRoYXQgaXQncwpfbm90XyBh
dmFpbGFibGUgb24gaU9TL21hY09TIGFuZCB0aGUgQlNEcywgc2luY2UgdGhhdCdzIHRoZSBjYXZl
YXQgSQp1c3VhbGx5IGdpdmUgd2hlbiByZWNvbW1lbmRpbmcgJW0gdG8gcGVvcGxlLgoKVGVjaG5p
Y2FsbHkgdGhpcyBpcyBhdmFpbGFibGUgb24gQW5kcm9pZCBmcm9tIEFQSSBsZXZlbCAyOSwgaWYg
d2Ugd2FudGVkCnRvIGJlIG1vcmUgc3BlY2lmaWMuCi0tLQogbWFuL21hbjMvcHJpbnRmLjMgfCAy
ICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9tYW4vbWFuMy9wcmludGYuMyBiL21hbi9tYW4zL3ByaW50Zi4zCmluZGV4IDIyZmUw
NjU3Ni4uOGM0NTU0MmIyIDEwMDY0NAotLS0gYS9tYW4vbWFuMy9wcmludGYuMworKysgYi9tYW4v
bWFuMy9wcmludGYuMwpAQCAtODcxLDcgKzg3MSw3IEBAIC5TUyBDb252ZXJzaW9uIHNwZWNpZmll
cnMKIGFueSBmbGFncywgYSBmaWVsZCB3aWR0aCwgb3IgYSBwcmVjaXNpb24uCiAuVFAKIC5CIG0K
LShnbGliYyBleHRlbnNpb247IHN1cHBvcnRlZCBieSB1Q2xpYmMgYW5kIG11c2wuKQorKGdsaWJj
IGV4dGVuc2lvbjsgc3VwcG9ydGVkIGJ5IHVDbGliYyBhbmQgbXVzbCwgYW5kIG9uIEFuZHJvaWQu
KQogUHJpbnQgb3V0cHV0IG9mCiAuSSBzdHJlcnJvcihlcnJubykKIChvcgotLSAKMi41MC4wLjcy
Ny5nYmY3ZGMxOGZmNC1nb29nCgo=
--000000000000636e100639fc3ff0--

