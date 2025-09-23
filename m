Return-Path: <linux-man+bounces-3949-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A266B95D55
	for <lists+linux-man@lfdr.de>; Tue, 23 Sep 2025 14:22:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 43FFB19C1C2D
	for <lists+linux-man@lfdr.de>; Tue, 23 Sep 2025 12:22:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45E87322743;
	Tue, 23 Sep 2025 12:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d1u+b/dc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC31322DC3
	for <linux-man@vger.kernel.org>; Tue, 23 Sep 2025 12:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758630109; cv=none; b=geCRW2w43rPoV2+LtF86U3FtAS+fuEaAsVWAvYQktZ19JYHnSZP8EXJviS5TlK2kRZXiG+7arhhTH9ZJOqLGajdecb+OwQtGxGV7YB8rRkUOlLcistx/6Jh9lrPGOhcnzSyeGu4vrGGrDoV50Ym9HvdZLa1+foVd8/yyl/UVUgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758630109; c=relaxed/simple;
	bh=7kfUIm6efLQvJG4+tkQUfGt3fWocFVFtJlWIbuDustk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KtDwdiSm7bBdDbI2qQWSfmAAbteApCzRg3jFcqhHmw41VOKWKFVKa7Xdlmr+kZ0zVZrq//InCHplK3zJAi+oFMXa1i7LHPYuFQD5LMfOVoPcJto6xvSGPy8hgIRp14Psc3ezbvO531BSxn8C+sgDNgs6pKS/Jy5rut0B48Ptjt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d1u+b/dc; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-89018e9f902so2962324241.0
        for <linux-man@vger.kernel.org>; Tue, 23 Sep 2025 05:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758630106; x=1759234906; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7kfUIm6efLQvJG4+tkQUfGt3fWocFVFtJlWIbuDustk=;
        b=d1u+b/dcMmMH890EjDLAQ0pQbmy+izE6vNGzDW1tI3/1m8UW7fSJLMCUWWCNcS2sP3
         2eKVEvSoi25/aO1oUDJYwYPMeqAsV/oB63u9D9TJBPPtMnA/k9jWsIg8B9D7+dWrjzK8
         Jm2fmv9VgVrpI+iI3QP0d77NiB8LvxChWEEX7J5G2z/d0+m0b4LvAwSdsZLEz1lVnkoj
         050Z6egARih8Up1Q5eaC9fLN2Sz1kegb1guq5DkK1wJYeaRoFOHrpDvlmvQ5lDxEweWG
         S2NXvYSvLwdmkWXOvEGderukNzMLUhn1UeFYJ0f8L33TlV0V4W+YrfgzTTEuy3MG5FGl
         TFug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758630106; x=1759234906;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7kfUIm6efLQvJG4+tkQUfGt3fWocFVFtJlWIbuDustk=;
        b=SiMb8hBovGnxvgmk9aEfibsj3oE/9NY7byELml1Cpvk4J/7JX4B1IAwjhFHBFGeQyn
         D8JbR6lfG9BoGjvAttr3C3tZmasyNnGtq2lUhP3W4bWrvokpnA1DbJh8gp4YO/IeylUT
         yVv7Qn8/tntWmnK/zK8IbuV5E7RBQiTrtdfQ0PawnMBVhAXhLLNncns1K+60EYfpwevo
         flbJb41G1glMhu8L1/o+UTYjlLZxdn7sFgivJJWtgA/29QFbvsGJMdAyetAM5MfZ7pWF
         9QhGBh0fZdnsgQsVVAhDI+bond3Adsyq/9sHgYR8CCAhXp6m5imeGE1wALhJmLINqCFJ
         rHEw==
X-Gm-Message-State: AOJu0YwQuqzVSKuPTbp6d6K/JC5wLPYWfhbeoK/BmtD5Se3w5JuToWsP
	XYx9ruKYLwTupcZixb6p6fB3zTunfgeg0EBfZaGshaK8Oz1M5DXgfNDjwQ6aKOWUvIcsiWTv4bX
	8poylk46Kx2oBXumdb8H/s763oDwG73g=
X-Gm-Gg: ASbGncvyrbv1RkRiu0M+dNsY54N07YxtF7hV2h7felUnVH+ZZETth2OBubSbD9OWsal
	X3ZStmxaUzUfOG3LEAoiJJDDYkqW6fII1d9ugIv7vSnAUv3jx+O/T6D4uLMo8xjp0N72i3CL/AL
	AF1KCv+vELA9rXUbmF+V0JQfHHEVygXSsIbuXSo1S0R2PgwVaVL8ocVvcRjTG8G/OUoRKkJI4OA
	25H73ep9OYV3du6EVWujmyw+JHrxDLbhh53ikuLL9jzWOEv
X-Google-Smtp-Source: AGHT+IF/bkkNR8c4e0AFBsXkzm++DGkJ/8yzeddfd5reuV86YvV+Z1EDijLk78X086OGMr+AV/CHn6B9TlFdbwQKHM8=
X-Received: by 2002:a05:6102:3752:b0:520:3f1a:c533 with SMTP id
 ada2fe7eead31-5a58118f73amr720325137.21.1758630105800; Tue, 23 Sep 2025
 05:21:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <3cdmp5o65fcnrd7fdaziino6thqpnevsxfln5hku2fvbc2bk42@4ck2l5oyearq>
In-Reply-To: <3cdmp5o65fcnrd7fdaziino6thqpnevsxfln5hku2fvbc2bk42@4ck2l5oyearq>
From: Eugene Syromyatnikov <evgsyr@gmail.com>
Date: Tue, 23 Sep 2025 14:21:29 +0200
X-Gm-Features: AS18NWD1LdmRW7NCH2Bxg41Dn66ShkaUaBRmhWGe_u8Zo35RBigSg2sp39xrgRg
Message-ID: <CACGkJdtuDYoOsnxMhGxk5MP3WSxvBMvvhfbDck2C_nLRYdYYGg@mail.gmail.com>
Subject: Re: mini-book manual pages through multi-.so pages (i.e., the old
 proc(5) page)
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Doug McIlroy <douglas.mcilroy@dartmouth.edu>, 
	Michael Kerrisk <mtk.manpages@gmail.com>, groff@gnu.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 23, 2025 at 12:51=E2=80=AFPM Alejandro Colomar <alx@kernel.org>=
 wrote:
> Right now, the only way for searching something across several pages is
> going to /usr/share/man/, and doing a manual search there.

I thought man -K existed specifically for that purpose.

--=20
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}

