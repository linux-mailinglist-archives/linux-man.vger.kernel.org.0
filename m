Return-Path: <linux-man+bounces-2677-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB35A75A55
	for <lists+linux-man@lfdr.de>; Sun, 30 Mar 2025 16:31:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC4DC3A70C5
	for <lists+linux-man@lfdr.de>; Sun, 30 Mar 2025 14:30:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F07BEEAA;
	Sun, 30 Mar 2025 14:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MN9klukf"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 989C446B5
	for <linux-man@vger.kernel.org>; Sun, 30 Mar 2025 14:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743345062; cv=none; b=cVXzZ9cOjHnB+7WC815YueEaLd56lJ9xMfvXS1G8DfP7Lr4cL51V07a/p80bU1FG4gequx7Mg/Sbsp1x2J+2F0QWPcamKuWhmDzOQmtkTw2vTuZj0MLF6uWb9DzgQiSY96aTFt7qIuYliQFUqSDEAt4ExIa30hI6VB379ovgW8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743345062; c=relaxed/simple;
	bh=rpE0YB82pxhWcDHvXIHzPi9klXFqpNceKkyrMqjb+KI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=acpaMDiZ3oY4kP/CfoWTIM6qRWcPN7tf3eDUdVgo7JeZD6z8F9vYTdXSVSUp7OBXuZvSEvU+bGDS618N3/lhByVNaonsVrgTgu+d3O1NIo4nyPaJuLzlOkqbMmHv2N8QYc/3LbBNNIhg7L4TYWksL7+gxOqGbT8tIzXCEB687W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MN9klukf; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43cfb6e9031so34033415e9.0
        for <linux-man@vger.kernel.org>; Sun, 30 Mar 2025 07:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743345059; x=1743949859; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PsGAti6Q/MRCMsE5XaWp/o7S+XuYe2mRbxgR1neOEPs=;
        b=MN9klukfWJoSEyMEiJNC7eh3X4xgHxlBMMvOPFOVixKu2Y/J06dd4JRXv1mp7ZtPET
         MAUv0DGDTX7a7YS6HtIAJM/rLALhC5nWTy4CmQrvNrdMV8/e0NewanKsONbnBcPLKywV
         BKWDkiVT2VDENNxcRneb/pjG+fdgf6ohze+63jeCKV0MGTECasvSjTVrXC8OcG9STzU1
         yweu7VB4hS34MqfbawhL5CULNAqotqFCKe2ps/KebOfT7g4T3EirYLoFhv/S/2ZnvAhr
         4i738sZ9UVk/AyoT33WwFfqM7ulEONh504cchrTKxZrBiCpqsZkR6JP/VjOw1O/ZmJ36
         CbzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743345059; x=1743949859;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PsGAti6Q/MRCMsE5XaWp/o7S+XuYe2mRbxgR1neOEPs=;
        b=OOuufsL/HEku4YK4XCp2nNXS6E/8aPkmuvrkuQs7IlWWOM7FYdATOsDLHyMBYijTab
         NtoH02CLXNPJVlGMLUk9RgNK2q4neJnU9PAQf4dfUO5Fi9fGBBqKsHIfl4PV39BC287G
         p5ubVUq4e7xNTtW3yzEFoYiDv+3IC3LUTRc9lwGC6p61rjtqGqcWYulFZszz/6W3Hq9y
         mqmX40jOXd0tMTAdYZD3M0Zaprz8bfZUeN48Q0hxGu6GWeNEc0kQVL4dsoesSrVI4JXM
         pJK4el9Df3g78ZBTVx2e5zW9W1n8TJAoqGAx6+P1/Lu3WNEFpXWOK2oTsqMy7+EFuUXP
         JXmw==
X-Forwarded-Encrypted: i=1; AJvYcCX2An+5MR9Uqxbgao3B4APb4jbY/18ZYX0vgke1nuxKJ3bfK6Hnpz8Baeu/ZzjS1q+vS5EAuFUTdIs=@vger.kernel.org
X-Gm-Message-State: AOJu0YzD4u/WFCmXmaKwYxQ/yZCtQ8HuNaVQuvGUrNYRVCrga5peYmmz
	0Jvl/X2vRHByf6ZMSObe9onF1+Xg39ubrv6Qmnt0zOqiUkyOt8zO3ukNV2MI
X-Gm-Gg: ASbGncvwPnisiVwPVC1sfUM+Hn96kl3rR7nmVID2O5MIn0bR8dW5/+451pA8KSyMu3C
	jJu0p10sxi2I/eWrJVkR85y+TyJqWF3qZhZRQVHqQEuSQiuAiK/NcPlRUc8mFNqp9yi6e81uERm
	aN6xGixtmP15VcjEymYAyHWyh29nH7Acu6a2pyHWQ6hax++sPy+XIVUOjawri3GG+uaO5s701IP
	8XBRVbPqDtZjNptOE0yRB76fUY/SSA3cVmIOpBgfiiawSkj6CVna/k7FAxWEoOVs+D8EU02tfXJ
	h9cegvNS5OvFEcEEdhXL2Dm54WWsaGH1O8y8p52+oyTVfL0C+OZMT7Ey5ZXZHQ58HoF1CUg=
X-Google-Smtp-Source: AGHT+IH/9bFJP248sSzMBVL6HDKgUZMf2z6CfRvg8b7V1rB7gP1TL5R6gvzmcbTSQb977WVVyvCK2w==
X-Received: by 2002:a5d:59a9:0:b0:391:2e7:67ff with SMTP id ffacd0b85a97d-39c120cbb0amr4748774f8f.10.1743345058662;
        Sun, 30 Mar 2025 07:30:58 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-39c0b79e304sm8726487f8f.73.2025.03.30.07.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Mar 2025 07:30:58 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jared Finder <jared@finder.org>,
	"G . Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v4 0/2] TIOCLINUX.2const: Document TIOCL_SETSEL selection modes
Date: Sun, 30 Mar 2025 16:30:37 +0200
Message-ID: <20250330143038.4184-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi!

TIOCLINUX's TIOCL_SETSEL sub-code has another layer of sub-operations,
called "selection modes" (even though not all of them actually deal
with the mouse selection).

Going forward, the CAP_SYS_ADMIN requirement will be different for
some of these selection modes, which prompted me to at least list the
different selection modes with a short description.  I am leaving
CAP_SYS_ADMIN documentation as it is for now and will send another
patch once these semantics are finalized [1] [2].

Thanks,
–Günther

[1] <https://lore.kernel.org/all/20250221.0a947528d8f3@gnoack.org/>
[2] <https://lore.kernel.org/all/20250223205449.7432-2-gnoack3000@gmail.com/>

History:

V2:
 * Split into a "restructuring" and a "new documentation" commit
 * Use non-breaking space \~
 * Put URIs in <>
 * Added a helpful link to console_codes(4) regarding mouse reporting

V3:
 * Corrections and clarifications for various selection modes
   as suggested by Jared Finder. (Thanks!)

V4:
 * Clarified how TIOCL_SELPOINTER selects the coordinate to use

Günther Noack (2):
  TIOCLINUX.2const: Restructure documentation for TIOCL_SETSEL selection
    modes
  TIOCLINUX.2const: Document missing TIOCL_SETSEL selection modes

 man/man2const/TIOCLINUX.2const | 59 +++++++++++++++++++++++++++++++---
 1 file changed, 54 insertions(+), 5 deletions(-)

Range-diff against v3:
1:  d07edb528 = 1:  828c5189a TIOCLINUX.2const: Restructure documentation for TIOCL_SETSEL selection modes
2:  59f217fb0 ! 2:  bffc3e550 TIOCLINUX.2const: Document missing TIOCL_SETSEL selection modes
    @@ man/man2const/TIOCLINUX.2const: Select line-by-line,
     +.RI ( xs ,\~ ys )
     +or
     +.RI ( xe ,\~ ye ),
    -+whichever is greater.
    ++whichever is later in text flow order.
     +.TP
     +.B TIOCL_SELCLEAR
     +Remove the current selection highlight, if any,
-- 
2.49.0


