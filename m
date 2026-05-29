Return-Path: <linux-man+bounces-5634-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNNkDyyiGWptyAgAu9opvQ
	(envelope-from <linux-man+bounces-5634-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 16:26:52 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB29560389A
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 16:26:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EB4233009995
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 14:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BCEE36CE10;
	Fri, 29 May 2026 14:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mgVgXgE2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9BBE331A6E
	for <linux-man@vger.kernel.org>; Fri, 29 May 2026 14:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780064214; cv=pass; b=sPjcAhO5DWGbFRqHIHKkgttaBjhwidB9P1Xpiszb/7/reh1Y6MS/Uaab/ZcSLMycIv4lhicGR2wSup73qU9Q6Z1dFq6201khr1IyQlWkUGi0MKCnsvqWkUkDdWzpVGe9pvEjRNeQ0o/TFfAjonEM5b18t9jq6+xBLvZPGc/70oE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780064214; c=relaxed/simple;
	bh=cTo+AxO0cXWgSdb/1drGLQWxKLRHgBvg1pWurBV4n4Y=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=JT3oBD3lvYsMRhE0Du1EaioGCUWULJKCBfg34Mjuxa7+RME+nC66e9YFV+BsbZkHn+yyo2sYPnoDXetQOOXur4atxCdXzjJWQam9h9ioK+h9PCAtMQWL/HzcCsEqoCeq2Ye8zlyIxBSp/8CUofLeL+mlMkEqhVqCT6764vhc9j4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mgVgXgE2; arc=pass smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-bd4f8260e4eso2445963166b.1
        for <linux-man@vger.kernel.org>; Fri, 29 May 2026 07:16:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780064211; cv=none;
        d=google.com; s=arc-20240605;
        b=TnRBqrDkcTbE6UL54her8nMqpaH0eJkoYA2WDj/nXTSaeUt2RA785rXSiBNYUaw8+G
         M73+QKQgsicBR/SDBtUImotkv9R1kOtIBq4oXM0hqp5lXe9Gu1qUgJojyRqx0wpWSAnR
         AaXGJu4Q3oTS+Ufep9uEOIXCLDgm8jVEZA9zxMxxnXXI8Qmzf4o6ctbwH1+4QP6+Jz1i
         Y3lFfP6q3RMLijelBbRmU1LLKa6Lf26SLrpywBU0EvlLTksTHIFKVhVitSwZMQDptOIO
         JTZ9iMscx0PExxC2jgdS+Bmq0oO/xxQ41cZkHMdYLEFje5vs+4SoRv5svjhwDbptY2W7
         +l+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=cTo+AxO0cXWgSdb/1drGLQWxKLRHgBvg1pWurBV4n4Y=;
        fh=HQrAeJGtoj0mrk18UcVkFyZbpURbuUn9DSibLkpCvQs=;
        b=b7Wbd9Dmn5Qjdm/zaTgWoE1SGmcCZGaxYA/vC2FySk/EjpapHW+7VFYDCsu7B4uLiF
         ZhhUrsIlD/EDu0KYvajPIJsqVtkcxbTys50/fpKVGtGZDk8+mVg0sRhd1hT1qSA3RLuO
         ufNVI5dixIT4jyFKVHuBEQeNxY5wpJUEfyh8QJn7+V1UOoydYG0+Dilo+tRQSZ6v6WA2
         Q0EoyfBpK21oUobYZjqf3e6btojYI9FkEzSj9NagU2NnI0me/foIj+TzP5TQDbLEsWZF
         pV3mzqLhMCoOCvsm8bpRniZJzv4GagjHli/WenmGRMXr784xBwoK9w5FFG6vg499U07Q
         q7tw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780064211; x=1780669011; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cTo+AxO0cXWgSdb/1drGLQWxKLRHgBvg1pWurBV4n4Y=;
        b=mgVgXgE2xR0WLzGCCnE25juLeiUFM7XTGQzFvPpDQyQmOuZrAmpxzIhx2rfU/Ul4dt
         UZPYMJGiheRAsKGIbVtkjD5MT3ekJ8KLRzYwyaWRnSaoaGc1XMqgVc9TvQiXvvYkFxuw
         xAwhrG+iN+aSU3FA4LCeoNhCKzcSa/3W5UEFGIgZZ5/xm5Gyhb0ryNETpc+DXbVd++Z4
         veOfrrjXDFukSJpe1FyH73kjD5VdgGNU8lx4kVzAh9tso6GEqW91bOOjqKOg+97Uuhlz
         IJRAm8m94ccyc6d0kGxkYq3rp2Scdvu1NugrBctFZ7DBjk4q9vSL65byzhrstdrX5MSq
         m7UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780064211; x=1780669011;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cTo+AxO0cXWgSdb/1drGLQWxKLRHgBvg1pWurBV4n4Y=;
        b=MXI15Sb9B1GWdx+2mVX637TNggzc/bDIMQh58bs04+k/xoOeO1cY9s66iLkidfuTlR
         AwSRLFCfCDg40mAiSZOmMrdqarclayLDWVVBTi+fU3gXvJT+KVAGcW6XPm2X6RYgHUCZ
         DcAnXk2kSeNPE7S1l62bZul91d3jJTLEt0PEBbcuLvGd7ensgBXX6PoS+SBQffxCeC/W
         NUxI+/03nx+uB6wXv4MrEKTO9kRxrMZeP7NNXw5Hc5j4TPY54v0tegR+Df19hu/LoL8t
         1dNLTAdFkr6QOeRUTB1wNtL82O/cWTBGC5FXavnvGsKNcfTj/LEZTrkbyvBU96MRc8j7
         +HGg==
X-Gm-Message-State: AOJu0Ywrr3iYPyu4o3InonOzyJjS5unoDdLq7MYAaC+epO3pBuQxu9pS
	9V7nvJorIf1YcJoLWtX/9TdJlmVVnP6x8TTRBaySP7eSo4aWBlua/pts3kw47yvvOBu0bRme2T1
	FT4ye13874ElugeEOkQBncIysucz4Iv0=
X-Gm-Gg: Acq92OFu6b+xZY3mjFU+YWYEnZAPTtS654+h75qeAXTeMt1UxiNtJMtcWUkTWSTW34R
	dG/Kd9Jkt24zax6aKFbkuadli7tEhkj/3lFdZe9yo2Ft6LzHRr80LDWtN6Qtyoo/vUS0tSz/PVj
	2WEiacQB/cxz+IpSnR7+waF+90xeVcTlDmKW4i0WXwUmNptCex18tXG8kA+negbKPpqyS03jYS1
	9ayWH5n1y9P4m1/DludGajumg5s1jPl5tksK+Hqvh1roVDonkUGVmej2RIpCnEu35+9BHqa5mfu
	KFk1fhEQqYkkkOX3aJhVyL1M0X46sZK6rj+7hqYT1I5PNObjN/MVXvzOuIrztD9s+BUdkU5YhmL
	4nUE0Trs=
X-Received: by 2002:a17:907:9288:b0:be2:9d25:3da0 with SMTP id
 a640c23a62f3a-be9cbdc746dmr189902466b.25.1780064211113; Fri, 29 May 2026
 07:16:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Chris Adams <chrisadams741@gmail.com>
Date: Fri, 29 May 2026 10:16:40 -0400
X-Gm-Features: AVHnY4JxENvqxH0l5YOJ2gpZzV3-DVot1jMF_B9gXicWFdb9y9Da90oL_Ja7xXI
Message-ID: <CAJ8owHS3QMOykxJTveCSB5iSiSUVKtswVjDaBJ6cos06whB3AA@mail.gmail.com>
Subject: Linux Man Rendering Issue - Resend
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5634-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chrisadams741@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: AB29560389A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello,

I=E2=80=99m writing to let you know that the rendering of links within the
description sections of Linux manual pages is currently borked. I
apologize if this is a known issue. Behavior persists across standard
browsers and devices. Thank you for your work on this project!

Best,

Chris Adams

*Message resent due to linux-man spam filter.

