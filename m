Return-Path: <linux-man+bounces-5361-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wG5NC4G852mu/wEAu9opvQ
	(envelope-from <linux-man+bounces-5361-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 20:05:53 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAE143E590
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 20:05:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E3C733010D85
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 17:58:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D27639DBF3;
	Tue, 21 Apr 2026 17:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HCCuspS1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A52753A1E66
	for <linux-man@vger.kernel.org>; Tue, 21 Apr 2026 17:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776794333; cv=none; b=NEFCKKKMfssTfhB49AlxGxnNdbooNEwJMQeDt1IoqsKr6CFQR5xkD7apefAX3jMiGgILnOMe0U2WqUMSHah0ZLELzaRJ60hHpuwML1mC36QP8jIy4R+Ya9wQMn5+l8BWOZgqT0DMH/JMvVQa/A8NfoNKV1+R8K6bkseGODarGKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776794333; c=relaxed/simple;
	bh=sWBa+2aRfQCX6pbtR+GRFDCJo82DcGVOpbkVsAteTE4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pwpVx8kBoygg3pEL5fr6NF+/6wZTB6M3+pWwvFSLyF0wKLG9OAJhuYYM3OK72XaUyQuzNjza6UrtjIqdNeyrsfz+Nhxx2fq5Dyp5Avryo1orMw5crkEDLu32ODrlRlzKIJoWbxK6q+4/aMc1MAuOezZKR/rwKitMPBLK6dfEYko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HCCuspS1; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-43fe3e22e33so3063020f8f.0
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2026 10:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776794330; x=1777399130; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pjlb9jZvwH+TVUgU06pDUUmobeDsuusSNd8A1qP/7As=;
        b=HCCuspS1dwwep0+3sUQCzFPpA3e3ei489TLy3bZevrOZ4uc29AOjMnAHqj3obsptHa
         xptdKLQiYoC9bf03DZJWNyEZPhlduPYzetN6ejcVMqxjvG4X7uISIDLRbobS6hgk6A3X
         ZPsfSo/CM3aj5mH8lnZGwRW5QwefO5kmbEEKH6N0VHlwq6hgZbOT19XzOHl3ZJ99jCci
         jH3ozFBzx8HcSnHwlTtaMSeKT/lRldyPJJIFFwv7CaEj/8MqeAQvKKs/2v0KxOFPDoWN
         a5alcLotBzvjQW7FBC5+nNG1+8iDC6tJjwh/RzH2+1o5lh7kTUXZz2QnYEHgheIcfecg
         DDzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776794330; x=1777399130;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pjlb9jZvwH+TVUgU06pDUUmobeDsuusSNd8A1qP/7As=;
        b=pHE1tGNrvVrxUzwjRnP9IXdTEKoqdpif9mqA8+6fYXsF0uYgbaLXUS0kIh4c71Fv0j
         JDWDnr0i/7pQB468I3z6x2MMyGYLTIyFEDvdUD8seyxhc8snJubwAPlIGcpHE+EjVZtu
         ru24btieIQLRjkIpduZ55N84SRnb/Fin+fqCatAnJdv/gE1CY3nIYc+B2ujOri+PyGF4
         ROx5OZWmBWkH21jel/mXLR5Yduop3VW3iUh7QejCje7kqzwVPY34EzU6M1fs3ZxxKG+n
         k9GMaPoZvxI7oB7V1vffWg3ZeDjdkWMxmukj4a9bEo2O2xoCuDLhcmfsNhp15Q039Vxj
         I2Og==
X-Gm-Message-State: AOJu0YxplQnzzAyHClXRIkZXKxviFwJBcNUgJJFGTBuw3Ss82mB3JQas
	4MBOrQNQvkA8TDIdc+IY6DbrKcCgkC2QLvrqsGrF14vIm5pajQLXaztI
X-Gm-Gg: AeBDietKLPBxX5Qj0G8/0k9KAQkFNQJzloCGXUHrSOGUAqJzer7UKcOhej2I/q2oxgV
	msstEkAOVgtUVqNuIzjDiuruehZVZFAkgtKqjEFlF3S+Kn1JjIvErl5n51OcLzvi0kWkE1bsQHG
	OgrkCrMKobcXgXJOa0Oal1nF2eivS1b7LmTe72sNT75RYV7P5gRDXDqtIdglq3K4BXy3Txq+VRe
	HYynkOO3EOhteXWrpWIA/PGNCD3Xf3JQ6VGilWYqmyH+G0b8rOEYI18w8cVjpQ+M6pB7GW+mK0k
	DLJnST8Hsk2b62lRYsR+llPSutN+xPf+ffFS2d18CWp81X00Vpw6ALdmFMs/o68ffe6EzvtCeFZ
	dihHeB95J4X3y2R5ByRBC+GexnlxjEVN0S2FmHmwEgISgdjC/QqYfL39tL9ridtcQP8+xxdZTNq
	nm4UzMAy5gSUW6i7KDRYmLR4drIuhbO/TWBC8rIIMUW1CKm8ODnWRxO6+kx78=
X-Received: by 2002:a5d:64e4:0:b0:43d:7828:1f81 with SMTP id ffacd0b85a97d-43fe3e1170fmr30095950f8f.41.1776794329796;
        Tue, 21 Apr 2026 10:58:49 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e4eec9sm37217414f8f.34.2026.04.21.10.58.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 10:58:48 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v3 2/4] man/man[27]/{landlock_create_ruleset.2,landlock.7}: Document LANDLOCK_CREATE_RULESET_ERRATA
Date: Tue, 21 Apr 2026 19:58:40 +0200
Message-ID: <20260421175842.6870-3-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260421175842.6870-1-gnoack3000@gmail.com>
References: <20260421175842.6870-1-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5361-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gnoack3000@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CAAE143E590
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the LANDLOCK_CREATE_RULESET_ERRATA flag, which returns a
bitmask of fixed issues for the current Landlock ABI version.

This mechanism was introduced in Linux 6.15, but backported to all
older kernel releases where these errata fixes were backported to.
On official Linux kernel releases, if landlock_create_ruleset() with
LANDLOCK_CREATE_RULESET_ERRATA returns an error, this is equivalent to
the case where none of the known errata have been fixed.

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2/landlock_create_ruleset.2 | 36 ++++++++++++++++++++++++++++--
 1 file changed, 34 insertions(+), 2 deletions(-)

diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_ruleset.2
index dd14f0ceba7c..9520c7269742 100644
--- a/man/man2/landlock_create_ruleset.2
+++ b/man/man2/landlock_create_ruleset.2
@@ -125,9 +125,38 @@ version.
 Unless noted otherwise,
 all features documented in these manual pages are available with the
 version 1.
+.TP
+.B LANDLOCK_CREATE_RULESET_ERRATA
+Return a bitmask of fixed issues
+for the current Landlock ABI version.
+If bit N is set (i.e.,
+.IR "errata & (1 << (N - 1))" ),
+then erratum N has been fixed in the running kernel.
+.IP
+In addition to ABI versions,
+Landlock's errata mechanism
+tracks fixes for issues that
+may affect backwards compatibility
+or require userspace awareness.
+.IP
+Only check errata if your application specifically relies on behavior
+that changed due to the fix.
+.IP
+The full list of Landlock errata is available at
+.UR https:\://docs.kernel.org/userspace\-api/landlock.html#landlock\-errata
+.UE .
+.IP
+This flag is available on all Linux versions
+where Landlock errata were fixed.
+This specifically includes
+all newest bugfix releases
+of stable kernels
+where Landlock is supported.
 .P
 If
 .B LANDLOCK_CREATE_RULESET_VERSION
+or
+.B LANDLOCK_CREATE_RULESET_ERRATA
 is set,
 then
 .I attr
@@ -138,7 +167,8 @@ must be 0.
 On success,
 .BR landlock_create_ruleset ()
 returns a new Landlock ruleset file descriptor,
-or a Landlock ABI version,
+a Landlock ABI version,
+or a Landlock errata bitmask,
 according to
 .IR flags .
 .P
@@ -170,7 +200,9 @@ Non-NULL
 or non-zero
 .I size
 in combination with
-.BR LANDLOCK_CREATE_RULESET_VERSION .
+.B LANDLOCK_CREATE_RULESET_VERSION
+or
+.BR LANDLOCK_CREATE_RULESET_ERRATA .
 .TP
 .B ENOMSG
 Empty accesses (i.e.,
-- 
2.53.0


