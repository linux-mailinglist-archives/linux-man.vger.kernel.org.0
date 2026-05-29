Return-Path: <linux-man+bounces-5636-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBH/BJfNGWqNzAgAu9opvQ
	(envelope-from <linux-man+bounces-5636-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 19:32:07 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AE329606828
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 19:32:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DC6B13069528
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 17:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AD11386441;
	Fri, 29 May 2026 17:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="EBpgZLY3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCFDA3859F0
	for <linux-man@vger.kernel.org>; Fri, 29 May 2026 17:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780075670; cv=none; b=sWv1KM/xTPsipQuvKew3qmqTxkOmvgs0U38ry7UPraAGbjGYPCcd7s4Q6bZxXz62sbqft4XeY7NBX1i4ZjWyqWcVVjlQF1gl6b/U2vIzisxDgrpqt+5SdbLKso3jIUGJ6k0/GH2aVVDvp6vSw6/6/Hu10RskqLE/abSUUFmKj0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780075670; c=relaxed/simple;
	bh=fAktiUpSZP15Q/bKIpxU0tnb6CaSxI63AleOteLRFhg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=HS3pQDGz6E02xepN6dUks4Q2b6Xd7qkhhvniq1wAUm7MPiebC3Si8n6CW/4qGKYSN3avMkFcoB1jwTwqe8+1hsNr2oJPP94RuRV79kzdMDgFfF5+38RHmDaxuNo4ziye2anf6K8VeOBeY12LNlc2uhL5aoQQ8fBOvYC69/ESAVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=EBpgZLY3; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4891ca4ce02so2235e9.1
        for <linux-man@vger.kernel.org>; Fri, 29 May 2026 10:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1780075666; x=1780680466; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=85ALWsPr3bven76gnOdRecqCaNgtkddpS3RLL8wWr8o=;
        b=EBpgZLY3+njr7il5nsigIQB3SetWHoIf5y3+l6LmmCToqPszw/W9IS+bbMowu+WxVN
         Xy2bsH6SJFbdoi7HslcHby6knh4y69gW1jE1/VgobbokfvyT2VXk4pV7eNh3RFc2cKPa
         zu+WOYKoPsixLw6u4ZCmhuxj+7JBczK8pYos49uvJiM3e7/BA0G5ANAvWcddEQNtAlPf
         ubDcwi3m4DG4WQII+0so3ZHwV5PQUqWgttUTA/0wV8okzbxloUVxcgXpjEitTiTyr8aK
         MA8LeaEwsUwM1nO9z2wVaIQZTngnf4IAlka7n77PNKLCJA8Zo5H6QekLEw8n2oGDbSM7
         MaCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780075666; x=1780680466;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=85ALWsPr3bven76gnOdRecqCaNgtkddpS3RLL8wWr8o=;
        b=DtMQ4SyO4whYSUjn0uOFujBB8a+nrQYxD2HmjqsYOhvg1Lgfiu6Mc8qimC1a0RplYQ
         I7wUhyPyBXKF/g64u8teGHSoFfeOl5aa2OAtv/u5yJZSBKYS5YuySdCOTJza0FycbDcQ
         A7oGLwqsxAhxlOEhCvlbHsBBnCnh0ngtSlQrGIpFJCNlwkIZ36iJ1shhKkNJgYzg4CKl
         tr2B51USVm1VaeRN1B7QML7v/qdkXimNGvRSWGq0sImzKpnLgX+1SrRFvx3lnnXVxhBs
         NxS+dN47wcCj8QjIt+lcLFpEHg4Y87zQmoKohxfqNcCLliUTgzF5MR1UNnlxu/UNsANP
         DRcw==
X-Gm-Message-State: AOJu0YzkK70+tFnCzubw0GHxPfXAkNJ97Nn6rNtHtG9CLbVpjtodcai6
	nZ65TfG2mMizW5tWlaqyn2mynV5WUELRRX6I1oV0dKejQWBE6ZjT9F7bRsjzjFrgRw==
X-Gm-Gg: Acq92OE/6C0PQ1CrFI7Zbt/vQqiIC8NvH6iQjCsCId+YM7fJlbvUqY6JVsvT3DNaHin
	8uWcPXZam4o4FDrc+HU12G23C+gYqmrX1QU7ccqc1jv9YHfrlHygAOhP+puCAtIJmG/FkviYowv
	+BqYyxVptn9oy3Aql6IcpqlBpcI39JefYkt8IvgutInV9SZ5WayNIRXnPPrwYID9MV7Vajm8aoT
	qQ/mxz63yT0lVB1OW3eVoLqEAH3ocuBNfj70Jr8gfLFvhIq9UcW8gNN9ccupms4gKxzETAqqjCI
	Y6UUxilUXB+u2lSeqKJTkegTTOkPTvHX0Rf1k7N/LhxopE7v17jtCYy9S7jVC3XNNDwX8F5fnqp
	XPbrMNl7HFMs4n36d1rmRU06XrvrBKONuCIev4k256pyR30dEZ7LvL+RAligBkklVYyVzLjkwSR
	Qy55+W2tL4EEQUxImAY+YTyiicRVuC7QIxbFdMfA4tSDVdx2iSRuUvXjS8EZaA
X-Received: by 2002:a05:600c:8a0d:20b0:47d:1e65:e841 with SMTP id 5b1f17b1804b1-490a2d38b01mr1535e9.9.1780075665742;
        Fri, 29 May 2026 10:27:45 -0700 (PDT)
Received: from localhost ([2a00:79e0:288a:8:d743:bf7b:2a4:a9a2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4909c0b8a11sm18620525e9.16.2026.05.29.10.27.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2026 10:27:45 -0700 (PDT)
From: Jann Horn <jannh@google.com>
Date: Fri, 29 May 2026 19:27:39 +0200
Subject: [PATCH] man/man2/fanotify_mark.2: AT_FDCWD plus NULL path doesn't
 work
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260529-fan-mark-cwd-v1-1-cdfb3b5b6d7c@google.com>
X-B4-Tracking: v=1; b=H4sIAIrMGWoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDUyNL3bTEPN3cxKJs3eTyFF3DZHMzA0MDs9S0NEsloJaCotS0zAqwcdG
 xEH5xaVJWanIJyAyl2loAJGpbGnAAAAA=
X-Change-ID: 20260529-fan-mark-cwd-1c760106eff9
To: Alejandro Colomar <alx@kernel.org>, Jan Kara <jack@suse.cz>, 
 Amir Goldstein <amir73il@gmail.com>, Matthew Bobrowski <repnop@google.com>
Cc: linux-man@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Jann Horn <jannh@google.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780075660; l=1197;
 i=jannh@google.com; s=20240730; h=from:subject:message-id;
 bh=fAktiUpSZP15Q/bKIpxU0tnb6CaSxI63AleOteLRFhg=;
 b=hJ5GktEo+vJE7QpLWOYRXPPB5iwKBbBqD8iZUaDnywVjF1mwymGbV/ip3JMGKU3iYtYqsl9ye
 eC7zM0ArIzHDJSpUt0GJNM4eqgoq9A2tLOyFUVkIf8vE9ncoRKTNjwg
X-Developer-Key: i=jannh@google.com; a=ed25519;
 pk=AljNtGOzXeF6khBXDJVVvwSEkVDGnnZZYqfWhP1V+C8=
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5636-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,suse.cz,gmail.com,google.com];
	DKIM_TRACE(0.00)[google.com:+];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[172.232.135.74:from];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jannh@google.com,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received,209.85.128.48:received];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: AE329606828
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The fanotify_mark.2 manpage claims that AT_FDCWD works with a NULL path,
but there is no kernel code for that - in fanotify_find_path(), in the
`if (filename == NULL)` block, the fd is only used for a normal FD
lookup.

This was also already the case when this manpage was written back in
2014, so remove the bogus documentation.

Fixes: c200b422d ("fanotify_mark.2: New page documenting fanotify_mark(2)")
Signed-off-by: Jann Horn <jannh@google.com>
---
 man/man2/fanotify_mark.2 | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/man/man2/fanotify_mark.2 b/man/man2/fanotify_mark.2
index e561ffd21..a3b77537c 100644
--- a/man/man2/fanotify_mark.2
+++ b/man/man2/fanotify_mark.2
@@ -560,14 +560,6 @@ defines the filesystem object to be marked.
 .IP \[bu]
 If
 .I path
-is NULL, and
-.I dirfd
-takes the special value
-.BR AT_FDCWD ,
-the current working directory is to be marked.
-.IP \[bu]
-If
-.I path
 is absolute, it defines the filesystem object to be marked, and
 .I dirfd
 is ignored.

---
base-commit: 9db8ca91f920b9aba40ed68de6b8da0ca9dbefaa
change-id: 20260529-fan-mark-cwd-1c760106eff9

Best regards,
--  
Jann Horn <jannh@google.com>


