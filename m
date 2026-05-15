Return-Path: <linux-man+bounces-5514-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kC+LFPRcB2pa0QIAu9opvQ
	(envelope-from <linux-man+bounces-5514-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 19:50:44 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B610C5559D9
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 19:50:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 179AA318CF9E
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 16:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3F584CA278;
	Fri, 15 May 2026 16:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QDT1LStt"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3044CA276
	for <linux-man@vger.kernel.org>; Fri, 15 May 2026 16:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778864310; cv=none; b=BdXrigiKQ1Y4YvkS9d1Arm6Bmctly8HhobRbLzdIipowtK32eHyKhM36OuAHPWGJ/So9mBkerIOToKbtFLiY8jjaGmxcwtYB4dQEf46JZTje8xsvcsEkWO/v9VKX8LONhvGpHh4IIUA91IC0QSyXqs8enTun09HqHXE5rc1+OIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778864310; c=relaxed/simple;
	bh=PMIF0CYpUMiNBpVsqbq37cuzmC2MXk3CDaxMNRw6IaI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=HcPeUXXH/NtB06FHDvY9OebGVhsAhqoFN0aCLngdtGLaj30Scw/VgBFhZTYt8ymA55TQbndcXgqEc1BnfpV78R2XOx6N8qChIGxGRGwnYZsAvfcErddN+YOsIUO/7hAUAPcw5lQXkb1gw/3mDO6MhLuzYtB3dk+XAGI0CQEhp/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QDT1LStt; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4890d945eb4so6676595e9.0
        for <linux-man@vger.kernel.org>; Fri, 15 May 2026 09:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778864308; x=1779469108; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=itJYKa9sJxPo7+29My7gBMO0W4GjBONwaZl4tv0iYis=;
        b=QDT1LStt3ssNbybU6N2QeDLArJTmSw+0OWk4ZF+uYMHq+kDq4rjMY8nXIs6jIQCqh1
         ZLElr9Hu50on3DsDgRcVbprFtmBX46DSVGnEWdSXM3J0oLhxg3D8IO/DrndzlDOkJTSY
         PmH+4K+AhN/uQI/cwIV8wTtAI+DaYDlygQAEwHnoenm/B0FsAimkfrvZI2YrDklBQQpa
         HLpmVMv2Mcuj32hem+UUfnMFl3vLjF/JL8prxhm+NrKbVCc4T0iwki4HdCkMsb8TimgR
         +2s9LJ7YDARz92mPbhEYGw1CpJwIi5zxxwOqOLrqQx4xeeG5q53CZrNd5EKmHu6VCq9Q
         XJFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778864308; x=1779469108;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=itJYKa9sJxPo7+29My7gBMO0W4GjBONwaZl4tv0iYis=;
        b=bypT1tPzqOm1b0cTaSKfRIO2PR8ZKNG1kMz/m8UVK5+8f9QNSKhtE0mozvwkSG+lM3
         Twt3R+0B9p3vcOGVjgYVObzNUpc6CSXbbcEWQ1HC/XQajUFFoAYG8ZFvIzY/sgk1b6wP
         0fxV6XpE7oubXZp1DBVKTAU00pJ/2dMwIFy+VPjCeaAJYiuNuVg0E2rQA6EK2/1UxebB
         65SmIItiRuRS3xcjF96WUFONS/4x2ax05RaYVcYJIApueE+AuGTSVt2P8B0YKZewA04f
         eblKSpu9qWOE1rdPkXdF/A+BtmUeHp9Cy0EHFMTYyKjLNzAotgpvb9grQfe3RQ8VtpZQ
         43+A==
X-Gm-Message-State: AOJu0YwvYeH1TGnPWwxYfuq0gHtLDGQmHm/bwyzG3OR5vSBG8uhXju8a
	k8gDRXYL1v1y1vx1R5GoBBz4UoltMDgaMpF3XDQC8T1x3NLhwjph+fXc
X-Gm-Gg: Acq92OE78CN1tLRq2YwTflTt5kcxdcCpjVeCj9hMk9hB49we7I6nNef1HLrMPQwh1mF
	BwCpcB1VON684dwhp2cxV4/TMQasUWXo41/1QVtgyycP5qpbnra6CFwDbndL/BVEvWEnr/2J+Fn
	YR7NnGrIHGX87RaxjlOsYEAFzDH7kI3reTEHZiLJk9ZQQ0YVhj5C9Wd2W6KThSXq5Te7I4Sixbf
	u8cqWeoVBqmpLU6+GF8yoN13wBJYQOxMxRyKAeTnlbTBJ29PnCff7HKAMqcyjWdXGIAO++YpL4x
	0HKT11KtcEgaP/vIoy5Iop6wcPOsXLzknKz1PIMzRtmggUPzta43CfNgNK39CntVlvDYhG4WOcB
	eZKOm/tNuhISQXW1V15/Gd6MwOsTzyPIaDI7L4Ag2f65wj/sc/rM07/YVcoA5NkiViZVcSomdeO
	eo50LO1b0BMoipmOULFja5vHZBmdLa7phXsiQ/23DA9wP/SZlB
X-Received: by 2002:a05:600c:4851:b0:48a:79d8:a8d6 with SMTP id 5b1f17b1804b1-48feea99dc7mr21937095e9.7.1778864307308;
        Fri, 15 May 2026 09:58:27 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da0fe0f72sm17036948f8f.25.2026.05.15.09.58.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 09:58:26 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v2 0/3] Document LANDLOCK_ACCESS_FS_RESOLVE_UNIX
Date: Fri, 15 May 2026 18:57:50 +0200
Message-ID: <20260515165753.8830-1-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B610C5559D9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.60 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5514-lists,linux-man=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[gnoack3000@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Thanks for the review!

This documents the LANDLOCK_ACCESS_FS_RESOLVE_UNIX feature,
introduced in the upcoming Linux 7.1 (Landlock ABI v9).

I applied the suggestions unmodified in most cases.  For the ABI
versions, I used the same style as in the landlock_restrict_self(2)
manpage, which I like for its succinctness.

* Patch 1: should already be applied (including it just for
  completeness, because it's not reflected in the git.kernel.org
  mirror yet)

* Patch 2: Changes the ABI version style for existing documentation,
  this is fine to apply before Linux 7.1.

* Patch 3: Describes the new "resolve UNIX" functionality in Linux 7.1

–Günther

Change Log
==========

V2:
  - s/only applies/applies only/.
  - Use italics for "*" in LANDLOCK_SCOPE_*.
  - s/resolve attempt/resolution attempt/
  - ABI version indicators: Use cardinals for ABI versions, and refer
    to it next to tagged paragraph titles where possible.  Also,
    introduce an additional preparation commit to fix this up for the
    exitisting documentation.
  - Use C99 comments in source code example

V1: Initial version


Günther Noack (3):
  man/man7/landlock.7: Adapt compatibility in code example to ABI v8
  man/man7/landlock.7: Simplify references to ABI versions
  man/man7/landlock.7: Document LANDLOCK_ACCESS_FS_RESOLVE_UNIX (ABI v9)

 man/man7/landlock.7 | 75 ++++++++++++++++++++++++++++++---------------
 1 file changed, 51 insertions(+), 24 deletions(-)

Range-diff against v1:
1:  07b854876a09 = 1:  fd6de0eb416e man/man7/landlock.7: Adapt compatibility in code example to ABI v8
-:  ------------ > 2:  33b9972559c5 man/man7/landlock.7: Simplify references to ABI versions
2:  414c8fa8f643 ! 3:  a937ec4a113b man/man7/landlock.7: Document LANDLOCK_ACCESS_FS_RESOLVE_UNIX (ABI v9)
    @@ Commit message
     
      ## man/man7/landlock.7 ##
     @@ man/man7/landlock.7: whose implementations are safe and return the right error codes
    + .BR FICLONERANGE ,
    + .BR FIDEDUPERANGE )
      .RE
    - .IP
    - This access right is available since the fifth version of the Landlock ABI.
     +.TP
    -+.B LANDLOCK_ACCESS_FS_RESOLVE_UNIX
    ++.BR LANDLOCK_ACCESS_FS_RESOLVE_UNIX "  (since Landlock ABI version 9)"
     +Look up pathname UNIX
     +domain sockets
     +.RB ( unix (7)).
    @@ man/man7/landlock.7: whose implementations are safe and return the right error c
     +.BR sendmsg (2)
     +with an explicit recipient address.
     +.IP
    -+This access right only applies to connections to UNIX server sockets
    ++This access right applies only to connections to UNIX server sockets
     +which were created outside the newly created Landlock domain
     +(e.g., from within a parent domain or from an unrestricted process).
     +Newly created UNIX servers
    @@ man/man7/landlock.7: whose implementations are safe and return the right error c
     +In this regard,
     +.B LANDLOCK_ACCESS_FS_RESOLVE_UNIX
     +has the same semantics as the
    -+.B LANDLOCK_SCOPE_*
    ++.BI LANDLOCK_SCOPE_ *
     +flags.
     +.IP
    -+If a resolve attempt is denied,
    ++If a resolution attempt is denied,
     +the operation returns an
     +.B EACCES
     +error,
     +in line with other filesystem access rights
     +(but different to denials for abstract UNIX domain sockets).
    -+.IP
    -+This access right is available since the ninth version of the Landlock ABI.
      .P
      Whether an opened file can be truncated with
      .BR ftruncate (2)
    @@ man/man7/landlock.7: and only use the available subset of access rights:
     -    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v6: same            */
     -    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v7: same            */
     -    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v8: same            */
    -+    (LANDLOCK_ACCESS_FS_MAKE_SYM     << 1) \- 1,  /* v1                     */
    -+    (LANDLOCK_ACCESS_FS_REFER        << 1) \- 1,  /* v2: add "refer"        */
    -+    (LANDLOCK_ACCESS_FS_TRUNCATE     << 1) \- 1,  /* v3: add "truncate"     */
    -+    (LANDLOCK_ACCESS_FS_TRUNCATE     << 1) \- 1,  /* v4: TCP support        */
    -+    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  /* v5: add "ioctl_dev"    */
    -+    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  /* v6: same               */
    -+    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  /* v7: same               */
    -+    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  /* v8: same               */
    -+    (LANDLOCK_ACCESS_FS_RESOLVE_UNIX << 1) \- 1,  /* v9: add "resolve_unix" */
    ++    (LANDLOCK_ACCESS_FS_MAKE_SYM     << 1) \- 1,  // v1
    ++    (LANDLOCK_ACCESS_FS_REFER        << 1) \- 1,  // v2: add "refer"
    ++    (LANDLOCK_ACCESS_FS_TRUNCATE     << 1) \- 1,  // v3: add "truncate"
    ++    (LANDLOCK_ACCESS_FS_TRUNCATE     << 1) \- 1,  // v4: TCP support
    ++    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  // v5: add "ioctl_dev"
    ++    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  // v6: same
    ++    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  // v7: same
    ++    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  // v8: same
    ++    (LANDLOCK_ACCESS_FS_RESOLVE_UNIX << 1) \- 1,  // v9: add "resolve_unix"
      };
      \&
      int abi = landlock_create_ruleset(NULL, 0,
-- 
2.54.0


