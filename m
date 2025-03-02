Return-Path: <linux-man+bounces-2560-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEB7A4B481
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 20:43:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF35F188E7D4
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 19:44:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E788F1C8FB5;
	Sun,  2 Mar 2025 19:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ip5VFwwa"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5AD1BEF77
	for <linux-man@vger.kernel.org>; Sun,  2 Mar 2025 19:43:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740944632; cv=none; b=eeLeCd/g8A2ceGiUw6Y+pMTlY7BLQgRAXC4lupTjacMzXo0iKI7TBFHREMRe0w4qBCI28A6g2BTBoh5A3JWenaDhtWHYiaUbiWxdpc2VWxcC74ql+Y2rz9Oc4b5EHIdw+mRMDgFAIT3TVbpfv+095UykLgv1Hhdz0VDXQannPtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740944632; c=relaxed/simple;
	bh=rbA4pcjU/KcKhWt8Xhc74P5bIq6GD/FTwPok/n4f75A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ZScWXhgxaqjLaq5JUF5FBrx8sYu+Zf+pCWXZjhauUtnonsQIlJEP9CZ+sbRUiaKp67aaemwsrT6k/USlSD9fKqq+I2rdxFV/NLfGkqK9GGIrSkQGD/yWmlGU3NCBOdvQ2eCF2lFGoqxSNsIEJRArK5JTJSvQ7AGk4XG444pIDZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ip5VFwwa; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43984e9cc90so29010295e9.1
        for <linux-man@vger.kernel.org>; Sun, 02 Mar 2025 11:43:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740944629; x=1741549429; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eLUeS9fmVk3vxH8ExMDueI7qiDgcLhIONG5VI6E9MmA=;
        b=Ip5VFwwalimQRPWfavBbGAfzjNE6x6EDFMKDku8F+Ts4nEv/OnyjcqyFmHdzoAXswn
         bHdWj4tirrnBF/cEPveHi2YS03slFfNd1GGpO/qkknoMm7W4QnfBpYRwV6uSf1tXRIT+
         N8OhxFyefzq5KkvucB5s0xkcpzhhGhxxLV254FaNQbg1k1c/udqx3uOJFne6QPKYRGkW
         DgHXZAJoxSriwo/zpsDM65sCKXgzW7ItiFyyJrDVTHKWl4fPz72//bi8mTHDH/5l30X8
         0u6PELV5RdPSgufh1pvvzNUKDfJ+Hew98IJAv8nuWvosu3cvmzq/ERskrXCNhWo22lco
         wulA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740944629; x=1741549429;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eLUeS9fmVk3vxH8ExMDueI7qiDgcLhIONG5VI6E9MmA=;
        b=kIaypBJq/hDNc9alH/yyyCUn+y9iJNchMYlvMhqRGrw6b/qmPhnDlObizFYr9UyRHq
         3CA2i9QMiN18yWQvM5IC+Ifz2jFGfmaujQrzFIyNaWA9A/auplQ6dt5HY90OQ/4hOQQX
         LS0sbRPCueX+6ui307XRixx9zFGiGmCMJnP61GAohBEcb7XpCEQTKARtzBDMtd0FGQvP
         +jX/clx8pnsVHss4gnPTtWA7MfRed6cT1WO0pI8EEAnIAm5LoOCyG3N5e+MeOZrRU7T5
         1/g0hQ8E75GzUS91o646Xf6IR8e1OeYTol78IBSGVWCxV4XNKtxBsRQDlArLjWw1BDDS
         p4Nw==
X-Gm-Message-State: AOJu0YxvxmFKQ89jamE2zXUwABzakKtaWFLcLY7fd48AU+eGRjwG9+jZ
	fhvceka4xg6fVm9v/Zhijw13+PiyJbNWIJtbyXeljtahWvdSbRs9
X-Gm-Gg: ASbGnctCbg0JKCrEhT07SgMHXNglLcLf5RLj9TIWCxFlH9a/YOjktbbKbgvGAwT5Ecu
	LzvtryfCfn1kpTDv5O1KRM+OR0gbnTAk5DidNz0A7N0UrVA913WSXmJvgdiL2BmaF6AJLNIto7p
	DlXIMfUDY+UGqg9Ra8ET85JF8HhtOcDEKp0lcuVSYX1kUZBYlxWYzlieuj14xilnr1WlcuD+9qC
	bs5Mnvaw3dCXZ2FUh2+desod4cDvEXlrVQcKzMuzv0YBJCPoJ45+7yeeAX8SxmKyZib7E4sJo4O
	Aa7/rnctzRwKG+jrwWf6ary5KUhZDaHeU8r/gaHm4w==
X-Google-Smtp-Source: AGHT+IEkiGmTL8Ua4ycGjCKJhgvHgFAoWicnk9tGNmLyCJNaU5q6HSyzfNbYF8ThXnDk6uqYJ++TPA==
X-Received: by 2002:a05:6000:25e3:b0:390:fc60:b6ca with SMTP id ffacd0b85a97d-390fc60bb96mr4435317f8f.13.1740944629065;
        Sun, 02 Mar 2025 11:43:49 -0800 (PST)
Received: from localhost ([2a02:168:59f0:1:b0ab:dd5e:5c82:86b0])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43bc2828afesm8271425e9.9.2025.03.02.11.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Mar 2025 11:43:48 -0800 (PST)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alexjandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>,
	Jared Finder <jared@finder.org>,
	=?UTF-8?q?Hanno=20B=C3=B6ck?= <hanno@hboeck.de>
Subject: [PATCH man v3 0/2] TIOCLINUX.2const: Document TIOCL_SETSEL selection modes
Date: Sun,  2 Mar 2025 20:43:31 +0100
Message-ID: <20250302194331.5135-3-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.48.1
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

Günther Noack (2):
  TIOCLINUX.2const: Restructure documentation for TIOCL_SETSEL selection
    modes
  TIOCLINUX.2const: Document missing TIOCL_SETSEL selection modes

 man/man2const/TIOCLINUX.2const | 59 +++++++++++++++++++++++++++++++---
 1 file changed, 54 insertions(+), 5 deletions(-)

Range-diff against v2:
1:  5eb2a603e ! 1:  d07edb528 TIOCLINUX.2const: Restructure documentation for TIOCL_SETSEL selection modes
    @@ Commit message
     
         * Indent the documented selection modes into tagged paragraphs.
         * Document constants from the header file (tiocl.h) instead of numbers.
    +    * Clarify expansion semantics as suggested by Jared Finder.
     
         Signed-off-by: Günther Noack <gnoack3000@gmail.com>
     
    @@ man/man2const/TIOCLINUX.2const: are the ending
     +and saved in a kernel buffer.
     +.TP
     +.B TIOCL_SELWORD
    -+Select word-by-word.
    ++Select word-by-word,
    ++expanding the selection outwards to align with word boundaries.
     +The indicated screen characters are highlighted
     +and saved in a kernel buffer.
     +.TP
     +.B TIOCL_SELLINE
    -+Select line-by-line.
    ++Select line-by-line,
    ++expanding the selection outwards to select full lines.
     +The indicated screen characters are highlighted
     +and saved in a kernel buffer.
     +.RE
2:  2f39d5cf9 ! 2:  59f217fb0 TIOCLINUX.2const: Document missing TIOCL_SETSEL selection modes
    @@ Commit message
         mode" is slightly misleading as not all of them actually manipulate
         the kernel's mouse selection buffer.
     
    +    Includes clarified semantics pointed out by Jared Finder.
    +
         Cc: Jared Finder <jared@finder.org>
         Cc: Hanno Böck <hanno@hboeck.de>
         Cc: Jann Horn <jannh@google.com>
    @@ Commit message
         Signed-off-by: Günther Noack <gnoack3000@gmail.com>
     
      ## man/man2const/TIOCLINUX.2const ##
    -@@ man/man2const/TIOCLINUX.2const: and saved in a kernel buffer.
    - Select line-by-line.
    +@@ man/man2const/TIOCLINUX.2const: Select line-by-line,
    + expanding the selection outwards to select full lines.
      The indicated screen characters are highlighted
      and saved in a kernel buffer.
     +.TP
     +.B TIOCL_SELPOINTER
     +Show the pointer at position
    -+.RI ( xe ,\~ ye ).
    ++.RI ( xs ,\~ ys )
    ++or
    ++.RI ( xe ,\~ ye ),
    ++whichever is greater.
     +.TP
     +.B TIOCL_SELCLEAR
     +Remove the current selection highlight, if any,
     +from the console holding the selection.
    ++.IP
    ++This does not affect the stored selected text.
     +.TP
     +.B TIOCL_SELMOUSEREPORT
     +Make the terminal report
-- 
2.48.1


