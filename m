Return-Path: <linux-man+bounces-1467-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D619317E9
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 17:56:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59256282898
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 15:56:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 970C6E556;
	Mon, 15 Jul 2024 15:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="YEeKDXMP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B22D53C
	for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 15:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721058968; cv=none; b=mb5ro7vdskTpZMQhEgE6csd4CwaL6dEnSHuccTsOyKXs8Ar+tYrjGd5KT/XqXH5o0eqnAuzEJil/Wh9NtlMUcvhPp++Wsrn/heWHTAhJHVeeRdsrYIeuZpto5QwofGU2f2ad9dHmeDXYb7Bm3ftLuV0DCTnb/P2ir8Xl+8Q6lYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721058968; c=relaxed/simple;
	bh=0h7v4ylHRd6m7+oSvEItO/dRSqYSlcH33ahAlcAKrXg=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=Y0xToltMKJK5h850Sxskz9W+qGeHkHsW2HIx8FL7psvgCcl+NnMv/g4NyW+fTSEqft0IgUqVZrnUqeLC7vzEKUC5KenJlaF8qHu2NYBntLpSsWnwzBA94A3lPnIu929yojWAS9/gIzqvgWUOy97jaocjDPWKQM6gDLPACnOqGVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=YEeKDXMP; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-e03b3f48c65so7813613276.0
        for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 08:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721058965; x=1721663765; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0h7v4ylHRd6m7+oSvEItO/dRSqYSlcH33ahAlcAKrXg=;
        b=YEeKDXMPVyIDfrx7lsnwEjsuucwvYIQcFhpZlgrBmVreWA0zaShKcPXqfyoUx4IhTG
         wY3EFZVNNJHrhJlIJVxkr84Y00jzK7Z7gf38kSKyhs5tIkwIeoWhtvU2OGZ09XvhZWJP
         EbJmFEczebURt2TtAtem1ScQTtkYClL7iFSOpZMLaocOn/cO0wGb88LM8u8VvJg4vOGP
         lEEHrq6LgusUwCQ1fhl89bBLnq8+ApOvzxcPAChZYtp6nj/qxYTgpOB+xhewQBK/av5I
         b5PtNxnOZ+ouVZ5cJWf2buJO9SJKTb+cPPu6bpdyjQBBeSJi1Ra8JlEHmMSxSqUIm7Q3
         MmRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721058965; x=1721663765;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0h7v4ylHRd6m7+oSvEItO/dRSqYSlcH33ahAlcAKrXg=;
        b=lf57gIa/wX1ER7vHntvUm/w8HyFrfa+CO01Z3153h19rxxlTJhavUuv5Q4hpkg+3pH
         YBpDjLCfnl1gw8Jc3fZojTnBpBpZtvxtulXaW98Sl2uzfMb8HXGtDo5OnTqW6P48Wawz
         5udGjtWO6DTlSEnj2zbUbaphUxMgv6vubF/BHmHz8baGb/ibmFrGWbqd9MW+CsfpOOhI
         DCPJeZumqjiSbQ3c+Dus5aZQPxlssIdDep8QV4YdSThVEPO/BhAYnsDX0V9PqLbVbKAP
         nQ5BO1aldiFG9xur0kYv4zJGxEAzbw04OFxCtn+cOoMzuQYsOBRirrziuxIZDdjvbiDk
         XHdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUy1DkiQHbJy7e0utdDPTTQZFV67aPPvTdczEbRHWr4rkgopRqcqsSMr0M0/cVaOkPt7zaqo8AeYiKBP/qX8HO8OPbltGuNz/SD
X-Gm-Message-State: AOJu0Ywj+dqdaLx63YV5UBPpBGq8kdPDRnAGYs8Gf3/VsPy9Xvx3bYw6
	eVSwRUuvjvIwgx0bbQileveMr07xmtXuiQH9QSPvCD7f8T1+K0f034MxGYBF8Dk4OtoFfC30yDT
	p3g==
X-Google-Smtp-Source: AGHT+IGT9kXG38Frf1Gd+ZK/cfqTvRrzmIoCp4KnZWCVztB1p13GejJHXSZAnGHJXcMFJ0W9OXcH0GdfGOU=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6902:102c:b0:e05:a345:259a with SMTP id
 3f1490d57ef6-e05a345282dmr83326276.9.1721058965147; Mon, 15 Jul 2024 08:56:05
 -0700 (PDT)
Date: Mon, 15 Jul 2024 15:55:52 +0000
In-Reply-To: <20240715155554.2791018-1-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240715155554.2791018-1-gnoack@google.com>
X-Mailer: git-send-email 2.45.2.993.g49e7a77208-goog
Message-ID: <20240715155554.2791018-4-gnoack@google.com>
Subject: [PATCH 3/5] landlock_add_rule.2: Document missing reason for EINVAL
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	"=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, linux-man@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This documents a missing reason for why EINVAL might be returned.
The documented behavior exists since the first version of Landlock.

Cc: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man/man2/landlock_add_rule.2 | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
index fa0b1f109..530b45947 100644
--- a/man/man2/landlock_add_rule.2
+++ b/man/man2/landlock_add_rule.2
@@ -101,6 +101,16 @@ The rule accesses are inconsistent (i.e.,
 .I rule_attr\->allowed_access
 is not a subset of the ruleset handled accesses).
 .TP
+.B EINVAL
+In
+.IR "struct landlock_path_beneath_attr" ,
+the rule accesses are not applicable to the file
+(i.e., some access rights in
+.I rule_attr\->allowed_access
+are only applicable to directories, but
+.I rule_attr\->parent_fd
+does not refer to a directory).
+.TP
 .B ENOMSG
 Empty accesses (i.e.,
 .I rule_attr\->allowed_access
--=20
2.45.2.993.g49e7a77208-goog


