Return-Path: <linux-man+bounces-1374-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 539F392AE14
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 04:14:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C2752B22421
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 02:14:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC70542058;
	Tue,  9 Jul 2024 02:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DD2AEIIh"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8203D967
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 02:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720491227; cv=none; b=BOaYnpmZt3K2g4ilKQ1PgEnNAUPoKxHAPObup1THDwlaxYjrgNzovwewPWOABWdHP/cIEAYlr/4joeF31OFIaAUKIE5ej51otzJxDaU4xEijnpWX+8XT4j2t9lsJXt3f5fPOHw1aKX5f6ihtIrRWbxUSAgZG3BNbyg32+CKdvJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720491227; c=relaxed/simple;
	bh=8xFoRlWP69S3Jtsj3dceyfadjnTvXv/bjJ8A0nDaO48=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lBrPq+XSkkqojk9D5ayJ1ozm8gkBlNnrWxkzcDn7WFhOsCsp4jbhwwUf/sW/ujcl5KUj1dELmc+9gNvEz0yYZE7cglCqLdCcViu9QQK+zOB/qa0rr5bN1qFmTiuvRmf7QkBAoJLjCQufAieiyjJCjXHCUldzCTpo0GskTzr8Cf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DD2AEIIh; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-79f02fe11ccso146948085a.0
        for <linux-man@vger.kernel.org>; Mon, 08 Jul 2024 19:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720491225; x=1721096025; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Mdlzxj7/qMbA5Swv+F9ZUSEqEvIRB1if4CTvFMSgiAA=;
        b=DD2AEIIhu7+YSEPXfVBTtM7NHUTg5KW2fd1hjTOgIcP6nwac2TybwXbhRqtm/ts4Gf
         bZjP+CB472pVXg1Qi5ybbsLRfSkQ7tjYhpKEnJ0eo0dyvDg2zsueE9zHvX88sXwEoS6m
         u6xUZU7wfWh2vIA18e8goPEh0LQrmwPrKNej72n/ZjjYw83ATpLAHP456XwmSg9mZJsv
         7gMDR8iaq0ev/GUe6+jI5k5hiUCEgN7UQ/awy33H7HWqf9tT4Pr5Pl7MPYjWxau2sMUi
         i53iEpiJyFo7r9fDl16s7gkkMy/wXdkkduY++jpmUoG72QAuwSpN+vwdjuM1LU6lCLRh
         YnHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720491225; x=1721096025;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mdlzxj7/qMbA5Swv+F9ZUSEqEvIRB1if4CTvFMSgiAA=;
        b=gZomFHh/4XSdOeO1OvDy+zeMbCD7+5xL1Rt5PEhWZMESClrD5JE1LezWEjTaq33o0e
         WV2Mg0lqK3G1Vo6qDuUAf0hul7R8LKks8NjtUXtvP2nVPmCmdOtOE5VvDgzj3Ob3EgIV
         09kVwwHGd+SwPKaTQVR1GzjPRLk+nG5FN83SPFOb+b9Wpv60/WMC8m2zqTd07u13v01/
         CMPTWcWhAuGtbrHJFV0sHFmmM+esU2eHOKfJccIYscgcsmmzM2T6hV4Z8gCieUghWM6c
         CrlmSYlV3YFr/yNNy07W0BQFxRB2tgd4e0niRtja5/jcV57RC0HT89iT6YuK4LB6LMwW
         zv7g==
X-Forwarded-Encrypted: i=1; AJvYcCWAf+SdYeJCjxdlnGlDUAhku6pt4T03Bk5c2OU55HImZPLtUDLUVbPnzeuC5kxgx7tkmrj6GIgagacQhpt23GAHWZ3oafLGkCEl
X-Gm-Message-State: AOJu0Yw5dHMIG9SHRSJY1uxAYc6RYiAG3qweDPZX06DTbbbU81cMQkA+
	d966DLTMuUyfG+gZ1V3ZNPGtSvkDSQeX+v9U12RleTQuZWOXZPYf
X-Google-Smtp-Source: AGHT+IGdxVIVJHLmGvf3DKUYMI2f5vBqaB/YGwxHr5UZ6ggazHrm5eUJwDoZcOXAW6stf6BS3luUyg==
X-Received: by 2002:ae9:f40b:0:b0:79d:9100:79 with SMTP id af79cd13be357-79f19bf9e5amr142368085a.75.1720491225035;
        Mon, 08 Jul 2024 19:13:45 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-79f190a18a7sm48826185a.109.2024.07.08.19.13.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jul 2024 19:13:44 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org,
	Christian Brauner <brauner@kernel.org>,
	Oleg Nesterov <oleg@redhat.com>
Subject: [PATCH 0/3] man2: document Linux v6.9 pidfd-related changes
Date: Mon,  8 Jul 2024 19:13:31 -0700
Message-ID: <20240709021335.158849-1-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Linux 6.9 added support for PID file descriptors related to threads
(rather than processes). This adds the appropriate bits and pieces,
mostly taken from the https://github.com/brauner/man-pages-md project,
but also from the kernel commit messages.

Kir Kolyshkin (3):
  clone.2: document CLONE_PIDFD | CLONE_THREAD
  pidfd_open.2: add PIDFD_THREAD and poll nuances
  pidfd_send_signal.2: describe flags

 man/man2/clone.2             | 22 +++++++--------
 man/man2/pidfd_open.2        | 36 ++++++++++++++++++++----
 man/man2/pidfd_send_signal.2 | 53 ++++++++++++++++++++++++++++++++++--
 3 files changed, 90 insertions(+), 21 deletions(-)

-- 
2.45.2


