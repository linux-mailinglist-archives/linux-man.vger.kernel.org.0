Return-Path: <linux-man+bounces-1494-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F022D937899
	for <lists+linux-man@lfdr.de>; Fri, 19 Jul 2024 15:38:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D0541C21B2D
	for <lists+linux-man@lfdr.de>; Fri, 19 Jul 2024 13:38:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F70A13F435;
	Fri, 19 Jul 2024 13:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="xoE/UzIa"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718421E489
	for <linux-man@vger.kernel.org>; Fri, 19 Jul 2024 13:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721396311; cv=none; b=MitgQ10i76zFW9ClBaXSX61cwiIoM0QZBIlu3y+OfDkYzhhKU63RwD3RmjWJnM2IiWcyCkNJruQsuX/2zLAvpI+4mqIdRzl+fKo3dQRswzLMr0zjxRZUvRsPQWQ+EkZ0EkwBUS4Mly3JAvaMCy/VkyOt7guk6WySa3mvhFigE9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721396311; c=relaxed/simple;
	bh=1NUH1KBfp27dPjJa7cvr0JK2RyotWdj827ZR/w1jHoE=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=gwcbo5e5Fbad9pGIf8ceu30LXmRCCgeEv/vBzV/FejrI4+mTdn5KE/kjgEQr9gLbp6rDr4kC+TqszfuP7e4NonKVx3dpyDdoDHaT94peRiIo0wTETn3m5e9GoO8H1VLmByT9aXn6elXvD02U+moh0tD0riu7AM6y6IeyzzbZ3m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=xoE/UzIa; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-e03a1ef4585so4506646276.3
        for <linux-man@vger.kernel.org>; Fri, 19 Jul 2024 06:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721396309; x=1722001109; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1NUH1KBfp27dPjJa7cvr0JK2RyotWdj827ZR/w1jHoE=;
        b=xoE/UzIaysdn9UYqEFpGysmYw4Sj2AVXIT9HU+ctBbwlAQHaTcjs7A37T3BnioBzWB
         F0x1bP0uyDlTdCf2bklWxdgAF8G42AQ6tyBCph4MuWtDAqn/N6woJmCatWMpr/EM0pCQ
         HxVpLu5pzGX0uIwGu/n+cAMVMmbjjOv2h6KtPeeDoaymhw2FUWEFC7rqf/QJ0jOIK26N
         WGXSpKne/W9sqSTuDTSdbiBz1UG86y0uikIRfwNLCLsloTUdTJYrh//uAsQ7eiBzH+kX
         VmOdBt5lqhvorBFdqORyBXmtgv4ZRzmEaZ2mO2Ej8x2Xx+5WdpRACJGqg6uDusNl08HJ
         8dfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721396309; x=1722001109;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1NUH1KBfp27dPjJa7cvr0JK2RyotWdj827ZR/w1jHoE=;
        b=gpPlLXep1a4iPFhHwAFP1vRFnf6qm060M8w4+qlpmmKLzLiBFG6sWE1NYdORxe9l/u
         yjhsNlZ8fCsZBiYWtP7aAIdwOfk9X3v7KQ2SWTrIL/RwaQl3ADZ4j/lNCkRA72WeWjsn
         hIEjwxcZabImr3x12MTaqRZKI4A47zO42dcn6qB097cpNv5BKix/Lvcx85TuzVQlJgIT
         aTCYkVPpC1LYprfxfAo4aOfUT8BwCKvLxuK0jv3U/TnksgPdlMkDe8YcEyWfqjWfZhUN
         2VIre+zeUSxILUbjzown8xqdIF+2mLK8xedBTTTpGgau069u8XGJy++PVUYp58vUFOrO
         BmkA==
X-Forwarded-Encrypted: i=1; AJvYcCXBYyKoI+18ElQAc2Q0i/59M0NcwZAEGq1JOvFsiA64ke7ngoyHKiwAtFp6EuAsbpxSjs+dh1fRkTsRa1T3uXfmw7u5wU63db3V
X-Gm-Message-State: AOJu0YzYLSdUgV7Gq3BWyoMwVGjQhm7iNl0IM3lV2NIeB2fzq6NE33p8
	pa2RzqUe1V9/ytlBOWXfZga7eWOtOC3JktvcfDHHGDwuNg+Hlo87tgfo/pA+nXsC5umQTXPSVAH
	YNA==
X-Google-Smtp-Source: AGHT+IHPhkfY4SftyWs3njOkid1DjtzvZDe8NvuEfrgTRdTIGnuP730KbqKOCNJ0uMCaQLK/IvHXv7i+PnE=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6902:2b93:b0:e03:b0e1:dd5d with SMTP id
 3f1490d57ef6-e05feaca385mr156919276.5.1721396309459; Fri, 19 Jul 2024
 06:38:29 -0700 (PDT)
Date: Fri, 19 Jul 2024 13:37:59 +0000
In-Reply-To: <20240719133801.3541732-2-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240719133801.3541732-2-gnoack@google.com>
X-Mailer: git-send-email 2.45.2.1089.g2a221341d9-goog
Message-ID: <20240719133801.3541732-4-gnoack@google.com>
Subject: [PATCH v2 2/5] landlock_create_ruleset.2: Update docs for landlock_ruleset_attr
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	linux-man@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This updates the documentation for struct landlock_ruleset_attr
in line with the changed kernel documentation (see link below).

Cc: Alejandro Colomar <alx@kernel.org>
Link: https://lore.kernel.org/all/20240711165456.2148590-2-gnoack@google.co=
m/
Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man/man2/landlock_create_ruleset.2 | 34 ++++++++++++++++++++++++++++--
 1 file changed, 32 insertions(+), 2 deletions(-)

diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_=
ruleset.2
index 871b91dcb..105e9b062 100644
--- a/man/man2/landlock_create_ruleset.2
+++ b/man/man2/landlock_create_ruleset.2
@@ -51,8 +51,38 @@ is a bitmask of handled filesystem actions
 .B Filesystem actions
 in
 .BR landlock (7)).
-This enables simply restricting ambient rights
-(e.g., global filesystem access) and is needed for compatibility reasons.
+.IP
+This structure defines a set of
+.IR "handled access rights" ,
+a set of actions on different object types,
+which should be denied by default
+when the ruleset is enacted.
+Vice versa,
+access rights that are not specifically listed here
+are not going to be denied by this ruleset when it is enacted.
+.IP
+For historical reasons, the
+.B LANDLOCK_ACCESS_FS_REFER
+right is always denied by default,
+even when its bit is not set in
+.IR handled_access_fs .
+In order to add new rules with this access right,
+the bit must still be set explicitly
+(see
+.B Filesystem actions
+in
+.BR landlock (7)).
+.IP
+The explicit listing of
+.I handled access rights
+is required for backwards compatibility reasons.
+In most use cases,
+processes that use Landlock will
+.I handle
+a wide range or all access rights that they know about at build time
+(and that they have tested with a kernel that supported them all).
+.IP
+This structure can grow in future Landlock versions.
 .P
 .I size
 must be specified as
--=20
2.45.2.1089.g2a221341d9-goog


