Return-Path: <linux-man+bounces-4976-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOf3GTQYemlS2QEAu9opvQ
	(envelope-from <linux-man+bounces-4976-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:07:48 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BECD3A27D3
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:07:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C1E0303C280
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 14:01:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB05A1ACEDF;
	Wed, 28 Jan 2026 14:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XPAIS9e2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C06C1FD4
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 14:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769608888; cv=none; b=kzxqKIUY9zdyuTTXpehE/xLZoZmZQxQUp1P+aPrgSO+ego5wvBwb/l3+EOPxbQOYkxcW3MclgK4Mjk6NsFYlDXhh/1ODnRTexiR+Z4Vsj0cykqvWF9yHnEbFhe4UHtzubzN8vtkCElznkROHWUnOSA0ug1uzZcO2PSslZGn1odY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769608888; c=relaxed/simple;
	bh=sNJusb1hUxA0F552+RRFASfLENYHkPUU0aPkC5KEP8s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=j2tsABG1YoyCXvlN9YpxE4Ql1dVMTwm/yUz8w5EoK7qEMLDoKq4Mxptv5DYx2p1sQCrVQ2xikyvyeyInMqr5Pl/e23kHiik0MimXHA9cpc5UyJi0cX2uKQRm2fVCT1bbhWysazlf0FbArRhYSk1AW4MvjhsVJDshgnSKrp9k+mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XPAIS9e2; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-29efd139227so48552725ad.1
        for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 06:01:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769608887; x=1770213687; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NtzWiuc9GZlA7GB+9T5how2yhPVj70LVs+Nu7Fe4K4g=;
        b=XPAIS9e2Klnnx2iIVrsUY0gbo1zJXJ5zwmi9epdQIiPT6nFS69unT7TuK1Eo28LdDm
         OyHFS9AKQAW+0SVM7KrnkwoU3LLbK699kxEwmYXe3wHxkTF+Qe7VUEftF2aiVsB5jjI6
         r716yMmGwUEyF/+Fl12vX0At2AAEYvkRc1W6q3aakcw9evR36pMmVN+M+ZVW8lkn5nej
         K6YqxCrroYy4gVluI2ZMj3st3qJjqraO9yBH0Y/iGhaFx1xqNKVQwnBTkVY2P7HWGRZF
         XOZ90nhvVCMWwdlcPLZg1zbu/1v1xWWSCrRLRw+wU9566sIWTgy4ilKir5Ud/FImnDkH
         ikfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769608887; x=1770213687;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NtzWiuc9GZlA7GB+9T5how2yhPVj70LVs+Nu7Fe4K4g=;
        b=idm+GSM37tsDMI7kJbZkhp+/noAPbfPB4xgAxBwhHYx1/RAP1b66b95YkDXpcccX6k
         uKiOUMlVHRmq1GfjVBkWCPnDaj2EoknXo9moKGAjAHRjozTNJlnBqVzrrwximHWTgov8
         4LE/TwSAVDDJHcU65Wt7Ue3q0hIQ6fH4IXK5wXNj4XAy0/UeSLaRwUnAtuzh7576u2Ue
         +yEy33WzetmWRmHFmPaS5JvLHzkVtoHNWYT3JOggZj59BwdA5pmYttkj9FIlQeZrOSUa
         e6o4pYPj3DUFsLQx+Gi71hyLmYwlNJMahOAJNSnC8L6lM2AkH32ZzMEehBSQ15QJPwI+
         TfbQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9rA/C7D5bmi1UmQqcbP9IiJ1VuVBjJXfiLUvmAV8gLH6A2BeIfo9qJrJblCLqtp/bfMEVqbRD9YE=@vger.kernel.org
X-Gm-Message-State: AOJu0YwpcNPdGYDaqrrJy/CFWVKcu2vPEVd2btsr1huuIBdKQiLAs0SW
	gJSbnTnT0zWUx2DnNiOnwvOwHdjO0+s6eCLUKYAEKQDrAEBKifwIBMNb
X-Gm-Gg: AZuq6aJKu4PGmKTanzySh0/Pj63RdT7Vq+accezczh+ZtRA7U8tyzf+CFSyvAigVsgQ
	rNQpG8/Pb5jNjqEH9osf9W1HlI38bc3LF7YpeionPe5xoMa3GDyta+AkuVLv9P390cM/dk6Omwq
	sHaVo7AScE+hu4b8jQWTS1UmMekyauI09KhNV5jG1wl+R08f3ievL7wHWZNdUJWwSvxEMZxnCch
	O7sWj0KVcqLWqsihjr0jRoYJGADki+VNbJLFChO843JXjl8ci90siaDULfc/6+KmjvTqW+oQuNN
	KBHeDUSAoBrikyyV4wsjZvmSGxULeDvM7f/CYwHswEcGPGkh3Rjz6thEyOtZ5dJjp113lslCDhm
	JPiS/GYUFVyaspjl9szZNsiaThYa7tccNeQ6BK3AektZbgWW864EsHbEkmfS+Jl3H1JWKI/xTDb
	7mjg0+l9lp5H0OrhGeNxIfcKReFx0dxrJayUpAVcZvld4z5SsX6SuHuw==
X-Received: by 2002:a17:903:4b07:b0:2a0:993b:d72a with SMTP id d9443c01a7336-2a870da13fcmr39586725ad.4.1769608886470;
        Wed, 28 Jan 2026 06:01:26 -0800 (PST)
Received: from fedora ([2405:201:3017:184:6222:99fc:e57b:efec])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b426a64sm24182115ad.45.2026.01.28.06.01.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 06:01:25 -0800 (PST)
From: Bhavik Sachdev <b.sachdev1904@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Bhavik Sachdev <b.sachdev1904@gmail.com>,
	linux-man@vger.kernel.org,
	criu@lists.linux.dev,
	Andrei Vagin <avagin@gmail.com>,
	Pavel Tikhomirov <ptikhomirov@virtuozzo.com>,
	Jeff Layton <jlayton@kernel.org>,
	Miklos Szeredi <miklos@szeredi.hu>,
	Josef Bacik <josef@toxicpanda.com>,
	Christian Brauner <brauner@kernel.org>
Subject: [RFC PATCH 0/9] man/man2/statmount.2: Document New Features
Date: Wed, 28 Jan 2026 19:27:29 +0530
Message-ID: <cover.1769608658.git.b.sachdev1904@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-4976-lists,linux-man=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.linux.dev,virtuozzo.com,kernel.org,szeredi.hu,toxicpanda.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bsachdev1904@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BECD3A27D3
X-Rspamd-Action: no action

Hello Everyone!

This patchset documents all the new features added to statmount() since
the syscall was first introduced.

I did work on the STATMOUNT_BY_FD changes and I have tried my best to
understand rest of the features and document them.

I have cc'ed the authors of all these new features, please let me know
your thoughts.

This patchset is also available on github [1].

Link [1]: https://github.com/bsach64/man-pages/tree/man.2.statmount

Thanks,
bhavik

Bhavik Sachdev (9):
  man/man2/statmount.2: Document req.mnt_ns_id and STATMOUNT_MNT_NS_ID
  man/man2/statmount.2: Document STATMOUNT_MNT_OPTS
  man/man2/statmount.2: Document STATMOUNT_FS_SUBTYPE
  man/man2/statmount.2: Document STATMOUNT_SB_SOURCE
  man/man2/statmount.2: Document STATMOUNT_OPT_ARRAY
  man/man2/statmount.2: Document STATMOUNT_OPT_SEC_ARRAY
  man/man2/statmount.2: Document STATMOUNT_{UIDMAP,GIDMAP}
  man/man2/statmount.2: Document STATMOUNT_SUPPORTED_MASK
  man/man2/statmount.2: Document STATMOUNT_BY_FD

 man/man2/statmount.2 | 156 +++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 152 insertions(+), 4 deletions(-)

-- 
2.52.0


