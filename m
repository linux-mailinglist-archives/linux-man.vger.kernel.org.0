Return-Path: <linux-man+bounces-534-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EE6871534
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 06:23:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2060DB236FA
	for <lists+linux-man@lfdr.de>; Tue,  5 Mar 2024 05:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EA5545979;
	Tue,  5 Mar 2024 05:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jPA7vbAb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A049A10A1B
	for <linux-man@vger.kernel.org>; Tue,  5 Mar 2024 05:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709616231; cv=none; b=tojsfoRa4w6R7+ZuyY0zVjSdPAP7XnuyNNywWqiqmKE/Y4BfmEgpRtnKSw7Ptu5Ewhky3lsuQ0v64//j4kQ6K4G2O3qEwh1C2XgAZM+dDs7H/hIthnecmxwc8mMGcvyJOW6Q+wGulf1T2PHx9y2lL3fvuyuQ33GNAOrr3ITZ2tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709616231; c=relaxed/simple;
	bh=i+ksYKySqCFco+oOYINfOtIll/wki6SzF8AKeJ4KYmQ=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=GpLNP/BAB0BhUE2dB5RsFuasW7tVaP641coCpUsAubmw6SdCEYTBlZ8aCAA8bCYGu85fp5qdEuNnZa77GoUm8bCkZqp0bJMc7ywWm8xB+ZRJEhlol1ObuEfgWdLeJyE1wRAlhuXLGgiimyBikeRnOjDgajI+xEJNH5BD/oLMOZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jPA7vbAb; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dcbcea9c261so5539301276.3
        for <linux-man@vger.kernel.org>; Mon, 04 Mar 2024 21:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709616228; x=1710221028; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=i+ksYKySqCFco+oOYINfOtIll/wki6SzF8AKeJ4KYmQ=;
        b=jPA7vbAbuWekX6DG77D5MaQnidrG/QwKmtxH0qzX20pJd1YwQ1GtHG1rG2K0+hNbUY
         DXeqOHE0y9bzZDR8QpeXuYjQtfJleVkgmokHWpVypQezDBoXNHD47/p+KFd3XlA9sdbr
         UhDk3zM6QOfGXLGeqpqjxPovy3O4OErWBIj36g6eVzc5ldwPM8+hMnObjmW1dCiOLI7N
         V1/zQUkPTXSRQQybOZhmJkjmgaq0OM5oycWDeQP6UA13zp65hhawN9rihBQ3hu99bz/I
         a3l5YZYeuaW5q3MwhK3TzKciDebuqzs14Mh3Ta08yZ0Wg/Phyi4Bpc975Hd0rOaG5cgs
         ODVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709616228; x=1710221028;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i+ksYKySqCFco+oOYINfOtIll/wki6SzF8AKeJ4KYmQ=;
        b=jtHf2DmY3/hfLEZTut8/FMMTK8h8zfr8NvPdb2mSVz6E+LdO0iQ/KiDaStYloz0sZj
         kH34BFau7pKASEgTi1CUf3aragx6qG3jVvPE2Z5cxF2JeDBvmZ2/3qgRHTOB6mLmIdz2
         y0NKZbq6kXx/OKlUbgqUSSNHzW3R/Z9NwZ0e7ZNIqDlMewM1C8wWVrJ+AXadyyE87gr8
         XBHnQ95SCTWMRuYgHByXwfIlYJm5sbX0p804N+P+fU/5yGpjcedP/Er5ucJ0yKFQ3WU6
         ER1UWeL+44R0xyNdtGDh/1JRK474DHVyLjlJ/W8Rrtza2yNRVTHH2IjNVfXtA1gR/Pcu
         IaZQ==
X-Gm-Message-State: AOJu0Ywmz2xY2PYVGgOl+2TFK8BGTGTxOpeIJX9AMnwgzr9mE4FOyszH
	Iq3p8vH9tMSqwHt7Qj3R2zzeaAsEZOoTjvOdFN9lagliQjHG5snKCEvlg1noHNBb9jGPHfbafAd
	3KagfywtsdSU3UYPkUYItxvNUgJtOkt+qoME=
X-Google-Smtp-Source: AGHT+IFuPCVmdXvVVZ5Tz/6E3i8z9/1uOQu6eOnVfULcDjLw1b3Bqya9D2i5CofS4F3bHGBkXoPjvITDjn/sRHIXZE8=
X-Received: by 2002:a25:dc42:0:b0:dd0:412f:e01f with SMTP id
 y63-20020a25dc42000000b00dd0412fe01fmr4020390ybe.43.1709616228578; Mon, 04
 Mar 2024 21:23:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Hugo Gabriel Eyherabide <hugogabriel.eyherabide@gmail.com>
Date: Tue, 5 Mar 2024 07:23:37 +0200
Message-ID: <CAK7k5HHf9jpAv7hc58GathsOdyDEmPjaMs9LCD=2PtxY+aNDLw@mail.gmail.com>
Subject: [patch] man2/read.2: tfix
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Content-Type: multipart/mixed; boundary="000000000000020c0c0612e30c8f"

--000000000000020c0c0612e30c8f
Content-Type: multipart/alternative; boundary="000000000000020c0a0612e30c8d"

--000000000000020c0a0612e30c8d
Content-Type: text/plain; charset="UTF-8"

Hi,

The enclosed patch fixes a typo in read.2. It turns "with respect updating"
into "with respect to updating" (that is, it adds "to" between "respect'
and "updating".

Best regards.

Hugo

Signed-off-by: Hugo Gabriel Eyherabide (hugogabiel.eyherabide@gmail.com)

--000000000000020c0a0612e30c8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>The enclosed patch fixes=
 a typo in read.2. It turns &quot;with respect updating&quot; into &quot;wi=
th respect to updating&quot; (that is, it adds &quot;to&quot; between &quot=
;respect&#39; and &quot;updating&quot;.<br><br></div><div>Best regards.<br>=
<br></div><div>Hugo<br><br></div><div>Signed-off-by: Hugo Gabriel Eyherabid=
e (<a href=3D"mailto:hugogabiel.eyherabide@gmail.com">hugogabiel.eyherabide=
@gmail.com</a>)<br></div></div>

--000000000000020c0a0612e30c8d--
--000000000000020c0c0612e30c8f
Content-Type: text/x-patch; charset="US-ASCII"; name="0001-patch-read.2-tfix.patch"
Content-Disposition: attachment; filename="0001-patch-read.2-tfix.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_ltdxcjl00>
X-Attachment-Id: f_ltdxcjl00

RnJvbSAxNGE5MTU5ZTk2YjA2MGVhNTZlY2Q5YWI4ZGI3MGExMGFlNTI0NjU2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBIdWdvIEdhYnJpZWwgRXloZXJhYmlkZSA8aHVnb2dhYnJpZWwu
ZXloZXJhYmlkZUBnbWFpbC5jb20+CkRhdGU6IFR1ZSwgNSBNYXIgMjAyNCAwNzoxNDowNiArMDIw
MApTdWJqZWN0OiBbUEFUQ0hdIFtwYXRjaF0gcmVhZC4yOiB0Zml4CgotLS0KIG1hbjIvcmVhZC4y
IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvbWFuMi9yZWFkLjIgYi9tYW4yL3JlYWQuMgppbmRleCAyYjkyNTk3YzguLmM3
NGY2MmEwYiAxMDA2NDQKLS0tIGEvbWFuMi9yZWFkLjIKKysrIGIvbWFuMi9yZWFkLjIKQEAgLTIx
Niw3ICsyMTYsNyBAQCBwZXJmb3JtIGEKIChvcgogLkJSIHJlYWR2ICgyKSkKIGF0IHRoZSBzYW1l
IHRpbWUsIHRoZW4gdGhlIEkvTyBvcGVyYXRpb25zIHdlcmUgbm90IGF0b21pYwotd2l0aCByZXNw
ZWN0IHVwZGF0aW5nIHRoZSBmaWxlIG9mZnNldCwKK3dpdGggcmVzcGVjdCB0byB1cGRhdGluZyB0
aGUgZmlsZSBvZmZzZXQsCiB3aXRoIHRoZSByZXN1bHQgdGhhdCB0aGUgcmVhZHMgaW4gdGhlIHR3
byBwcm9jZXNzZXMKIG1pZ2h0IChpbmNvcnJlY3RseSkgb3ZlcmxhcCBpbiB0aGUgYmxvY2tzIG9m
IGRhdGEgdGhhdCB0aGV5IG9idGFpbmVkLgogVGhpcyBwcm9ibGVtIHdhcyBmaXhlZCBpbiBMaW51
eCAzLjE0LgotLSAKMi40MS4wCgo=
--000000000000020c0c0612e30c8f--

