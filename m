Return-Path: <linux-man+bounces-5495-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPbWNFB0BWocXQIAu9opvQ
	(envelope-from <linux-man+bounces-5495-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 09:05:52 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5F253EB20
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 09:05:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B81A93070231
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 07:04:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D7043C061E;
	Thu, 14 May 2026 07:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Mzw+jlXk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E792EB84E
	for <linux-man@vger.kernel.org>; Thu, 14 May 2026 07:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778742263; cv=none; b=KIwsbxskY5Ia/7IFUkVkdmCmy6adMtx+KagDWT6EdMIt2O+k8It53Tas6X3wGgHT1FbqtaW4dWsor+xf6Hv4kZfvRmUDW4boKoJm7kmqoOdsYi7vO6InjAuwgMtn+vuSkY8d2K0yMhaAHjtJiYveqwwp0OCMtv+LxcZbt4dbVqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778742263; c=relaxed/simple;
	bh=1Lr8YEid+qHVD6b3duYYSrHOTUnRXvbbvD4UTPQ1iWQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=sCVppe3V71kuVvZVamzMP9puiH9D9ea/K3ZrxrB4a4aQOm9UJ3ES++yPPfvHmB5yEAylzUbkY8CaztBREmj4yD8mzmbmtOv2i7YJQbZdpHnd0XDXJd7A384Vqh8cOJLXtBy5NkbIMuCDzhEb9xPHop/xC9/y8yb9JcK9dHAjFFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Mzw+jlXk; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-449d6c68ed8so6594559f8f.0
        for <linux-man@vger.kernel.org>; Thu, 14 May 2026 00:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778742260; x=1779347060; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eGEx1foLcJPqHuGXJ6ix5vOmSjmAZ34pNNTZnoDZv+Y=;
        b=Mzw+jlXkukh+0PNjVVt4sh9O3zh9aVp6kACOVuXO+hLNTxbCyDYkkTJXTnYIW303T7
         B/0r5aaGWhAeT2x7XmtBQWSL6ySRRhZDZDEjqFhsHsCRvmj8lKJf239Rj34lfkpiQKFn
         Qxvmj4B87e/tJZ7iyxWQKrDpcIw41dps/09vU7NBwkEGHFs/wrpXosC2Tp58w56woTcg
         N4Y5fqGP/KUAhSlUAICCAA9YZ70hVdXBN8nq5cxCHh7XZQHsyvAmH9cDr5fAeOhMvNJW
         rX2EmtBVfIsoNmHMUBrY1u7Q3LH47YMLnIFp/4NbbLIQcsRfWWdDPloREz/lbywodgRO
         ADKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778742260; x=1779347060;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eGEx1foLcJPqHuGXJ6ix5vOmSjmAZ34pNNTZnoDZv+Y=;
        b=Tvfrhg4Aenas2sGCJr8xpSvJAaoaYe1lAQLcIrFU2ttkEiiTcu6v3iXiGy90kGYHdd
         N2QOETTKd3dZXtI8U5T5bdt7ZKtUAAt6wMhZyik3aSQ4GEBl3K13pHzdAnD36LWiubCG
         nDEKfO+svGGV4EKYEfmMDPYTm+KSBNdSG1/2RwiJfxJMWaVLQjrxSIRcm9kzr2s9Kdo3
         S4Rr21IgvMnBJn5mXnPTr7YDCI2iaJX7qOZ2yBVwBH9Q2ZcjOCrFwylJ3CQSfSF6ZgAC
         +FuOYzLougM6B0XAHxE0PMcF6wUdagmwuPgP23h40QwK1qA9JhWoar98sc3tcwTcLiaw
         v2/g==
X-Gm-Message-State: AOJu0YxwDbx4ELWAowsGIScTqo7alikA/p8RrTS+J5HZyivWzhM61J1O
	CXYdKIq7faYFF/E9trVIwuoZoBhsW1LYkmZDa4O1ZF8SPH+E9Y1l//yp
X-Gm-Gg: Acq92OFWON84FbsbcTwRF6FXuCoTvdgCwgju7gx7aKgTqRiKtMTzhA0jbh8u4gdZ3e9
	0hf18/MKmWfqHRP1H3BCOI6b5Rj3bIbsC1dfesGs7ul9cffQqNbFXOV/zJkU62eGVZYJmoPsxmI
	Le/IPclIiC3L3tQ5AYqkZW9IQYehM+1Gf0aI7jPIeQ/ePyXiAztAkfhNRt4qAV2tyIeD5OoOvLm
	8K+h6cgQcIAQ+k/JSbRK20RjsnCCdTsxevjet290nmTs8Xga0PTMR6ScoMw5O/O+uJ4psRGEINQ
	p4SVxwRGE8RCQEGm5yIfC8Xfv3vbbFQ8X3x+dcPNW0Dvdap0eSf+mJzOhnjGxc1ll7Flbw60gVD
	GMw7KebqFysUN4tsiSGQwb4CF7Zan9uH3WXdaclpEzZFWGvy9NssrRT814uKgWBrrih+z5nMqu/
	ulKh5XDTOWoshB3EBAQ+kOj4YzqbSUGCu4uOZRG2EoO3BKaBSvmUQOEQhoY3BQ+Qu89GjyAw==
X-Received: by 2002:a05:600c:138e:b0:489:e126:b757 with SMTP id 5b1f17b1804b1-48fc9a51304mr98049745e9.25.1778742260198;
        Thu, 14 May 2026 00:04:20 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fd7290007sm16445495e9.5.2026.05.14.00.04.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 May 2026 00:04:19 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 0/2] Document LANDLOCK_ACCESS_FS_RESOLVE_UNIX
Date: Thu, 14 May 2026 09:04:15 +0200
Message-ID: <20260514070417.7923-1-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 5A5F253EB20
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.53 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5495-lists,linux-man=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[gnoack3000@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

This documents the LANDLOCK_ACCESS_FS_RESOLVE_UNIX feature,
introduced in the upcoming Linux 7.1 (Landlock ABI v9).

The first patch in this series fixes documentation for pre-existing
functionality and can be picked up directly.  The second patch should
wait until Linux 7.1 is released, but I'd like to send it for review
on time.

–Günther

Günther Noack (2):
  man/man7/landlock.7: Adapt compatibility in code example to ABI v8
  man/man7/landlock.7: Document LANDLOCK_ACCESS_FS_RESOLVE_UNIX (ABI v9)

 man/man7/landlock.7 | 53 +++++++++++++++++++++++++++++++++++++++------
 1 file changed, 46 insertions(+), 7 deletions(-)

-- 
2.54.0


