Return-Path: <linux-man+bounces-2160-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DD09F320D
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 14:57:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B3361884523
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 13:57:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AAD9205AA8;
	Mon, 16 Dec 2024 13:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="LaUeF6mC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B46FE29CA
	for <linux-man@vger.kernel.org>; Mon, 16 Dec 2024 13:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734357450; cv=none; b=Pg5MRkIHfSouKAWcN7YPWrJgTwCquG6j87uG70Axgy9YOG8utffNOxM5hu9WYmRcI3BCtlzml7FkVydGVQHYnnRZHkKIZykLfcG94h5u9klho8sVgMjv2Y/nCR7AzbEvBRfXuxk4tGhhaof5idz9qsD4UGQCTCyNytbZR+a4Ibw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734357450; c=relaxed/simple;
	bh=lPFxzayesKXKD2iHDuABr134b1/a4khIIMzgr72X/YI=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=QSc4YhYydB8/zyjl3CjK3aU61Cr3DCK4sdylp0VhTfVvWu5s82vxPUhz8pRAtc3VU+iEzaw4SHpvABS9zFQtqrUN9uPMUbgmaqrJWXCdjaFyLQmd5IuZ0s6G3TnZN/igVYzG31LbeNQFcr2x6pBdjakkFrvcdiSU6ga7t/aGWno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=LaUeF6mC; arc=none smtp.client-ip=209.85.219.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6dcdd9a3e54so14421086d6.3
        for <linux-man@vger.kernel.org>; Mon, 16 Dec 2024 05:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1734357446; x=1734962246; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lPFxzayesKXKD2iHDuABr134b1/a4khIIMzgr72X/YI=;
        b=LaUeF6mC+REk7t7PGRr+qMTd61d4hZ6bxKeN+NUruBTYR9XZt0nbV1DmUap+LOtUqh
         +7PM2R/6h/iLYhln/gXK5A3lDMbvvnzmXvxsbaKPGG+7RoBLH1RzKXM+2hkhU1o14dV6
         sy9Ysw7PZiSI85qSfBN31AovkbJyxVFWkCTi5FORgJMuvK3UgPhhI5aQ6AGJ6Qnr8Sbb
         ZA5fjmJiT8Cse+D1fSeAWTFdEsx4bHHVVqL4PGFt8xP6VPgCLMf0X3MnwY5xAIvLYQ48
         mK+Y/hcVgd7RkwMXaqbgwuy/AzvOvj8SLsQdkQOGtQn/P9gQJXRLRvnKjL+bGFa5GZMI
         LcPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734357446; x=1734962246;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lPFxzayesKXKD2iHDuABr134b1/a4khIIMzgr72X/YI=;
        b=LuoLR57yF93ipXd4Is/gWay5uKTd9SLusV5DxWrTumnYMuovJG9PpCRkjclWayYmX7
         hiGs5r+HFd28r5/qOOsb1+46920LvV/6bC0d8Gqx/pPS6UH7qR+KHPmTI4lCEzAXBhVi
         AAqvYgbaL410LNa6EtvFKzgG7RRIge6PlVCdKUuvbpRgsmEYEuk0mSy1/zwpGmBYGleX
         GXIjo2P/2gOkX+ELW4kSkFQ/rZ1De8Ky5TcErfMVfFVzzrHHhSccHk7edNbt/jS9llpX
         ZmIvgFQC6CqLmNO9Y4jfb6xEbd8BWdJEzNixkN0cbPTpioh9855CEyIxX0PYCRLc/rpR
         /ihA==
X-Gm-Message-State: AOJu0YwFmToBccWYUIHAT6aQ0XzkzqvD3J/NXK97ggrUMgg39juOpBtE
	vTW8iMQJmX9Azc5uZGdhuvdo5ePcjImqz/lxVoLYgUf00Ysb47+K0LmY+eKf6GQpFtM4IXlfoDz
	TSIERK946eMxNyQNnnpGeaFoFni71SHaR3mwOGvjgbRusgr2RNi4e
X-Gm-Gg: ASbGncsgJCHbfQ/tXISfseDgd+wcHbTMAk2Aw3Z8reSxiMpWRmM1baiZOlihcB6s/n+
	x2PoLXVEmJJ7jdAGblUNVlPYQERT7DwpNfRE=
X-Google-Smtp-Source: AGHT+IF9HZGLmBTx1k8wcqsvJFe857OlviL7aiBm5d3LYo2rTXtX8OYoUdiWN8r2bpT0VNel4aWYyUiR1Rze/XEKlUA=
X-Received: by 2002:a05:6214:e83:b0:6d8:9b7b:14b8 with SMTP id
 6a1803df08f44-6dc83b2624cmr175755626d6.3.1734357445738; Mon, 16 Dec 2024
 05:57:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: enh <enh@google.com>
Date: Mon, 16 Dec 2024 08:57:14 -0500
Message-ID: <CAJgzZoruFUg6X=JUNJXCbBOKs13SX=dsNFNdTMct2VecUFG=ww@mail.gmail.com>
Subject: [PATCH] getline.3: clarify ERRORS.
To: linux-man <linux-man@vger.kernel.org>, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: multipart/mixed; boundary="0000000000007866b80629638f92"

--0000000000007866b80629638f92
Content-Type: multipart/alternative; boundary="0000000000007866b50629638f90"

--0000000000007866b50629638f90
Content-Type: text/plain; charset="UTF-8"

Signed-off-by: Elliott Hughes <enh@google.com>

--0000000000007866b50629638f90
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>Signed-off-by: Elliott Hughes &lt;<a href="mailto:enh@google.com">enh@google.com</a>&gt;</div><div><br></div></div>

--0000000000007866b50629638f90--
--0000000000007866b80629638f92
Content-Type: text/plain; charset="US-ASCII"; name="getline.3.patch.txt"
Content-Disposition: attachment; filename="getline.3.patch.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_m4r3ms0d0>
X-Attachment-Id: f_m4r3ms0d0

ZGlmZiAtLWdpdCBhL21hbi9tYW4zL2dldGxpbmUuMyBiL21hbi9tYW4zL2dldGxpbmUuMwppbmRl
eCBlMWM1YjBkNjMuLmFjMTA0MGRiMiAxMDA2NDQKLS0tIGEvbWFuL21hbjMvZ2V0bGluZS4zCisr
KyBiL21hbi9tYW4zL2dldGxpbmUuMwpAQCAtOTUsMTEgKzk1LDEzIEBAIGJ1dCBub3QgaW5jbHVk
aW5nIHRoZSB0ZXJtaW5hdGluZyBudWxsIGJ5dGUgKFxbYXFdXFtyc10wXFthcV0pLgogVGhpcyB2
YWx1ZSBjYW4gYmUgdXNlZAogdG8gaGFuZGxlIGVtYmVkZGVkIG51bGwgYnl0ZXMgaW4gdGhlIGxp
bmUgcmVhZC4KIC5QCi1Cb3RoIGZ1bmN0aW9ucyByZXR1cm4gXC0xIG9uIGZhaWx1cmUgdG8gcmVh
ZCBhIGxpbmUgKGluY2x1ZGluZyBlbmQtb2YtZmlsZQotY29uZGl0aW9uKS4KLUluIHRoZSBldmVu
dCBvZiBhIGZhaWx1cmUsCitBdCBlbmQgb2YgZmlsZSwKK2JvdGggZnVuY3Rpb25zIHJldHVybiBc
LTEgd2l0aCB0aGUgZmlsZSBzdHJlYW0gZW5kLW9mLWZpbGUgaW5kaWNhdG9yIHNldC4KK09uIGVy
cm9yLAorYm90aCBmdW5jdGlvbnMgcmV0dXJuIFwtMSB3aXRoIHRoZSBmaWxlIHN0cmVhbSBlcnJv
ciBpbmRpY2F0b3Igc2V0LAorYW5kIHdpdGgKIC5JIGVycm5vCi1pcyBzZXQgdG8gaW5kaWNhdGUg
dGhlIGVycm9yLgorc2V0IHRvIGluZGljYXRlIHRoZSBlcnJvci4KIC5QCiBJZgogLkkgKmxpbmVw
dHIK
--0000000000007866b80629638f92--

