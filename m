Return-Path: <linux-man+bounces-5251-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJx0H+wssGlHgwIAu9opvQ
	(envelope-from <linux-man+bounces-5251-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Mar 2026 15:38:36 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D59572522C2
	for <lists+linux-man@lfdr.de>; Tue, 10 Mar 2026 15:38:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B0C3321E94D
	for <lists+linux-man@lfdr.de>; Tue, 10 Mar 2026 13:53:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A0AE38AC62;
	Tue, 10 Mar 2026 13:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ca9MR1WK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE2840DFD4
	for <linux-man@vger.kernel.org>; Tue, 10 Mar 2026 13:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773150786; cv=none; b=FckXD0fkpUXcuMeWAihN9d1iRgRq0TEZrOvG/hXPpFI7Q0mtdsAQx3Xi8yBx5rNKO2WQ02lPMS8CfaDDJADtzfH4GpkNLQk8J8+JOlODAeSgBUlyIoja5DwvOaYyH9buddVji1Wp/jQJYmjj7tyXBxpkIDr4nODGg8dgsSDhUhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773150786; c=relaxed/simple;
	bh=pbVc4jEj5y3ALDQJXMRnKOG4NCQstF8gvHASTRDhYR8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CsTDAocjKIJmeJK9Fjwa51R6wOzXhK+DyR0RrluVuWnGj+duN2Fc0A7CE7aLZE+299N+NjVMJKSdhtGNDUyWc7LeWUHueQWxT7xJn39oQc5130ok0wunZkYL4EdutY3Zdj81MnJx6AWWq8ebdgqk1GPzF+GskCm2xvY+KYgIiIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ca9MR1WK; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2ae505619baso56888225ad.2
        for <linux-man@vger.kernel.org>; Tue, 10 Mar 2026 06:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773150785; x=1773755585; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IRIw4+KuPa/UPUEa+WYqD2jsMVJ3B6zr1hNrP5Qgix0=;
        b=ca9MR1WKN3f40dr34HPX24ifK+An1i7pIn5G+vu7hVYHfckv8Y3C8dYnvOjcwMgPuS
         3UfZaJfE+Mi7bm/qCAwKudoG8kDvTGBh5G4kh+LIvRrp8wF8sgN/Z7pLguYgpvDWTkuy
         fDKeBsiSeAuXoMpyLXGRMSjqcapt7EADymNj4cLCUtobX2osEpi6rAw07ge0F19bC2Gw
         nMf5/bK3UNHiidiVN5YXUNZdAvKDAtTm2uGKzTnwgfQjzFfkfFBWzf86gY8+fpiF1prp
         R84FaAGN1YcqRgn8B+SO8XNpxZUzd568lclOA4yjCXNc/N03v87/ML+tOyuuoLugllxV
         vn8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773150785; x=1773755585;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IRIw4+KuPa/UPUEa+WYqD2jsMVJ3B6zr1hNrP5Qgix0=;
        b=iWEoWoNWMHO+A1rh3ovobVI+JYwSyOh8UpjkWtOpY4OGXOGFk55JcKbriMOAdXONb3
         l43f79XfZOcTz9uuHc1PCix2wec5a62XQ/qDb8pQ8ygL01HSRIHloHT+BLaP0TidlspN
         ugkwZQGxWzx9txz8ZRB3weVeAxNtx9reE24A4wlMjjMUGDj8apfh9Bd3P7H2GiBWRt5s
         NwgnV2j1k3Ix6XKwbV/Dpfbek/SrZsZneMxT6QFyECilN1zH6iF4Xlk8Y56yGxCxPHlK
         KfmOxjmRswjCqU97msmnwoXj+hiHkWwiOg4rbCYX/EAmwM4K8FA/XZzAbvtteC0tBOJA
         e8qw==
X-Gm-Message-State: AOJu0Yx9l8ndOaGpzjOfQBWJGUAIuIosBZAK5kWSVKrO3bWH6Qurzr38
	CJ9jXDVgBzEMu/ylddlBMLUQ3EwaZeVyJn+tOdI9eenogieMsQz3o2RnkLpBVlvkeHPJPRpf
X-Gm-Gg: ATEYQzwCNeU0Dl0x1GJxUDYSllP9Fn16FMt0f7yHXJXxoZW4sctkygGJuNRJ5Zu+oEW
	0voprg8plnKSZwz8qnx74SdE26cMtRfJt2m89bSYRpUaoSAPnYFRDTAiWb0sK+vNOVlQShmLXAe
	hOQZAkyloLnxEXl8iHzOSfmKQDqRTw1qFk4C/9e8WzI+0UvEvMrmPN/aupgLQ3jAgzHbwl8qZFi
	udnNDQj5FMgpdJ5l5Zn6Vlt+XdUEMmKOdx525SudvsEthrVOPO0exXkz5wZajCJOVm3Ck/tpgbS
	eL+QgYNtBqncLb8/VWWmJNi4xf4J0VDuTpOpjYVoOljQgPllo/3EKUe8pAa3X7dSpXgeX+k9ubI
	edZ/wLnwPk9hMEzhX57Q0f/xp7fn0wbffpA+nAK2FME8i7hLYk9WAi/nRuI1r3Wq86PghDgUYbI
	0UA4Uc69N8lFy528VFsZUP
X-Received: by 2002:a17:903:ac4:b0:2a7:d42f:7065 with SMTP id d9443c01a7336-2ae824dd11dmr150216075ad.27.1773150785004;
        Tue, 10 Mar 2026 06:53:05 -0700 (PDT)
Received: from Misaka ([2408:8340:2641:1d11:ea9e:b4ff:fe12:dd0b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aea4eed00fsm43390085ad.80.2026.03.10.06.53.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:53:04 -0700 (PDT)
From: Ben Song <bensongsyz@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Ben Song <bensongsyz@gmail.com>
Subject: [PATCH] man/man3/strcmp.3: replace equal/less/greater words
Date: Tue, 10 Mar 2026 21:52:48 +0800
Message-ID: <6385edaf0e1f056ac12df9b42c71fad48364b5a2.1773150610.git.bensongsyz@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D59572522C2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5251-lists,linux-man=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bensongsyz@gmail.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

There is no meaning for one string is `less than` or `greater than`
another string, but the value of a character in two strings can be
compared.

Signed-off-by: Ben Song <bensongsyz@gmail.com>
---
 man/man3/strcmp.3 | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/man/man3/strcmp.3 b/man/man3/strcmp.3
index 2784d51c8..bc238aec1 100644
--- a/man/man3/strcmp.3
+++ b/man/man3/strcmp.3
@@ -23,11 +23,11 @@ .SH DESCRIPTION
 .BR strcmp ()
 The
 .BR strcmp ()
-function compares the two strings
+function compares the characters in two strings
 .I s1
 and
-.IR s2 .
-The locale is not taken into account (for a locale-aware comparison, see
+.I s2
+one by one until characters differ or until the end of one of the two strings is reached. The locale is not taken into account (for a locale-aware comparison, see
 .BR strcoll (3)).
 The comparison is done using unsigned characters.
 .IP
@@ -39,16 +39,16 @@ .SH DESCRIPTION
 .I s1
 and
 .I s2
-are equal;
+are identical;
 .IP \[bu]
-a negative value if
+a negative value if the value of first different character in
 .I s1
-is less than
+is less than that in
 .IR s2 ;
 .IP \[bu]
-a positive value if
+a positive value if the value of first different character in
 .I s1
-is greater than
+is greater than that in
 .IR s2 .
 .RE
 .IP
-- 
2.53.0


