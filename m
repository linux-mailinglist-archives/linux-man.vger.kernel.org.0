Return-Path: <linux-man+bounces-835-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FC88B499E
	for <lists+linux-man@lfdr.de>; Sun, 28 Apr 2024 06:46:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7024F1F21574
	for <lists+linux-man@lfdr.de>; Sun, 28 Apr 2024 04:46:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B19201FA5;
	Sun, 28 Apr 2024 04:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hqO+hZcq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEB119F
	for <linux-man@vger.kernel.org>; Sun, 28 Apr 2024 04:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714279585; cv=none; b=NLynazqpmRiAeEPq5rYEjB9NzjmORCswfrnWj2uoG2Q+9kt9C8q0A+YmXJN/0ht7+vSJnPvUeObkLtU+CG0Y8CRzMOdjUfdCB2qQ3HNEsdrKlhOeSCX4kFs4Fv2lsOcPk/1qkdlgyITatv6HO2kj58xp68KteLxPPv3S5v+jlnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714279585; c=relaxed/simple;
	bh=xMicwqTda5FsT/dRgCJexTgipN/b2tDvJRIcE76gpw8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=K04UnTA3/4OvXtoT4OBRkA1NQakGkzJ2bqyFSn9+dpi2USziP48kwqC+M+DY47jrUQnF4uOwR9injZNBbKpp6cCfLV7A9y2NPXOfsFtfrJPXibUh7kc+z5KUDCy4InTbdQhpXEb893lpCcCuwgxvUO/nydJv+ZUvZ9Vi3h57+jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hqO+hZcq; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1e83a2a4f2cso21419105ad.1
        for <linux-man@vger.kernel.org>; Sat, 27 Apr 2024 21:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714279583; x=1714884383; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xMicwqTda5FsT/dRgCJexTgipN/b2tDvJRIcE76gpw8=;
        b=hqO+hZcqaMljPQZ8ya5jZ2MtK1tfo+KZFA/0uYIjcROWi9bxuWeH3lFaVNJ9ldU4U+
         iCeXhwnSPtuX+sCFVFsaFtpIwxsYnaJd5+jsxrD6Ycmnhba3GRVNEw3fbvsYkIsPfHg4
         vy84Q+fOyBSSnQHaBlrKN6U0kz8RtwAwyY65KURzlnfQ7qXOatuABLtg0V46hV93QEiY
         Hx7tr1jUGMY5loCiJXlvKUH/n3XBo915w1vQHEdAVLh8fX/xp2Cu4hpv5Aa7BU/vfeUD
         ZeLXgc/diK0giKokcwY9d5jSR6O2yIY012PschbzF4KA4cPeZYvzIw9Q4TKFPxyulImy
         KRrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714279583; x=1714884383;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xMicwqTda5FsT/dRgCJexTgipN/b2tDvJRIcE76gpw8=;
        b=uI3pyIN6G0ngVaDksH+OKnFWrFmD1KmNrxWG+t1/owRF94UilwJ5Qh7io/BN6eh26d
         U0/FOvBtu3i4oinue2PaSrW2Hy9akGk5DszT9wY2IqXtog2YUGC/kMPvF3sDcY22cxVF
         IQ2Y7wIL5dDW/Tg3J+J847vCGmU19VDUfV9F7TrszD7Goqb5QGmZzMX7vzeUk3zor/sM
         7AARvXpuRRpXo2udb30a5f9hB4Qzg+IsQJ4lSjWbPW+1RDy760fOkJdv95JCN2/WAVGW
         6TCFbS4EEyFyRgGW4rgu5yAq5rNxyiteLwNGZ8dsij0Z/WqSYcFM5LYPc9gG1NHEmAio
         Q3Zg==
X-Forwarded-Encrypted: i=1; AJvYcCUL8UHkxsxCtywi8mIpPTQ8RYf0Ls/AfaKwJ0PDD4ud2mV9wwZNSsPKaYz6araGp5jIua2ULqr7KXdgobjoI/yi/8vyAjX3H0n8
X-Gm-Message-State: AOJu0Yxd/XOPNut6TU+SceSzDtH9aCMzCe7fG9T++KXUQcYhTJTFGWfE
	D93kTww95GJYaCEgOHYt9fgXTEI0nyHoL5FbMWSdkCxPCIODJGB86Av+bhDF1HM=
X-Google-Smtp-Source: AGHT+IHuRSjj6X4TLr5Ws8j4hSqK+5SQJuOhhv+qXX3KhtPtyP48TwzwX4u9s2eDaoXZRFd/zeFydQ==
X-Received: by 2002:a17:902:d487:b0:1e2:1df:449b with SMTP id c7-20020a170902d48700b001e201df449bmr9545918plg.69.1714279583404;
        Sat, 27 Apr 2024 21:46:23 -0700 (PDT)
Received: from localhost ([120.21.2.138])
        by smtp.gmail.com with ESMTPSA id n1-20020a170902d2c100b001e2a7e90321sm17808662plc.224.2024.04.27.21.46.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Apr 2024 21:46:23 -0700 (PDT)
From: Alexis (flexibeast) <flexibeast@gmail.com>
To: Lennart Jablonka <humm@ljabl.com>
Cc: groff <groff@gnu.org>, linux-man@vger.kernel.org
Subject: Re: man(7) <-> mdoc(7) (approximate) correspondence table?
In-Reply-To: <Zi1JhdEjj0ARXZlY@fluorine> (Lennart Jablonka's message of "Sat,
	27 Apr 2024 18:52:53 +0000")
References: <87h6fnwcqv.fsf@gmail.com> <Zi1JhdEjj0ARXZlY@fluorine>
User-Agent: mu4e 1.12.4; emacs 29.3
Date: Sun, 28 Apr 2024 14:46:19 +1000
Message-ID: <871q6q6qn8.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Lennart Jablonka <humm@ljabl.com> writes:

> [snip mdoc-man-cmp.7 source]=20

Wonderful, thank you! Much appreciated. =F0=9F=99=82


Alexis.

