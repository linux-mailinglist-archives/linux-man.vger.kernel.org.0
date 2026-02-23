Return-Path: <linux-man+bounces-5206-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHQ8CdBgnGntFQQAu9opvQ
	(envelope-from <linux-man+bounces-5206-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 15:14:40 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C272177DE3
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 15:14:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0BCF43031DAD
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 14:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0A6228134C;
	Mon, 23 Feb 2026 14:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lWtV+kKP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB1E5281358
	for <linux-man@vger.kernel.org>; Mon, 23 Feb 2026 14:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771855989; cv=none; b=Gy7cwMaebyTZo/xdOR76ZJlRqm+WyuxPVOhxtA5aC2MoDvkgVHartg4Otoqn2EIA88LJyL1f75rNrj+zvlRH/6eql66wYU0f2xf62AhuOuvigMO38aOb75sgwIGweoOduvICVIXAkkYZqkeFNoWnAWaKs5vKPaD655Vvo+Ssg10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771855989; c=relaxed/simple;
	bh=Gan8EMZJMwrISMsbQhJLJEqpR1sO1WNX/Qo+7akQL4I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pv8wvGqnMxLtWYgvXi9jVuTsHFNVNgGwJEbMq4lhgdlmNqeNFvEi2j2CRX/Eotw7G/lyB6FDC4Fm1Lk1/+dTTLExaG8ooJ+4RYROLjBfMeV2oVas1U42H8zEpdd6h/O3TgN9jI17EdfBE5CwbMVkzGZM6I19tmWzxTbynr4KWs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lWtV+kKP; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-824b5f015bcso4172450b3a.1
        for <linux-man@vger.kernel.org>; Mon, 23 Feb 2026 06:13:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771855988; x=1772460788; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pwSY0A2DzZC+MhpFPLGLVgfNdRTHV7vuOqmWH+det+Q=;
        b=lWtV+kKPAhL/lyBlN+ju1oAmoXlSXh358hQfft3x5WOMFgI+QJSx5jILyDqzpOHV/3
         COMpg6T3tCYDfnQsvhtMLeby7weLsKJf/mcPIM+E8LRY7s/xM4GGDvwRREtPVirze/R1
         r6PQenv+j98eMY+R6RyBfHxHDkaAOekyrEkw7H/01NNQ1j0CWPDAWEzpXfu667aUr0ky
         V27Ox1/ednhOdJzl8NG7AQqjMErh4LUEiTdSVzP298whofE+2zQvFedmtIooIAlAdEpm
         QlmeeovY3+y2GsDUxCoGae5SiT2c8ST7cTkgkDA0gsYUJ4r6aJhImRranhLgXIv1CJ7Z
         87mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771855988; x=1772460788;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pwSY0A2DzZC+MhpFPLGLVgfNdRTHV7vuOqmWH+det+Q=;
        b=oa/0M+SOSlxY4oJyzb0aQ5XR2FBGHZ5IkE6LnvSytNcZxtcXLUbxOIaG430YtITwBl
         YoaZ7nA1CdqVzz2z01E//qP1hkqy90ODNbjo2/UxlRx3FzJJbzaFeGVtTpB8fR0lKGxf
         txzB347iKsnxUaX/zV7jgAZEwKfZNq6P1jscWQxjWAHDwhKvZyMIuvnuNU1QVtLwmmOM
         adOR6U4v3xsyN70829ygF/047p1pF3slKitHzKG11TQVhEitzshqf37bMjucqAbxU/Ex
         CCBAQbiWUeuVtZSarxlWYJH1A/rUqslyIYYZHY2L7NIOrdMKPR7qPpqL0DYMrrn9mplU
         NrCA==
X-Forwarded-Encrypted: i=1; AJvYcCVgGJJK64KAs7MAub7k0WSk4+fNi+kv33+MV9sEK2oEkpmI8YrbdQdJewupWoUG5QYxITfnskNuwEw=@vger.kernel.org
X-Gm-Message-State: AOJu0YxqpqjwYweTwGWYwzJpITauy3TseRDPC3H0URkmrWleJZX2Z9jo
	NiRjNBf2lzZk9NrVpHZVQcikcqox9q7oxzJrwmre20ldYujTlSQ6H7KR
X-Gm-Gg: AZuq6aIjTd8sV4r90kw9ewUzWjpYdDvzLH0EiQVMoBWLz7riNISsb/+tF3QQz4BjMMW
	lyBS0rl3IbX9ihbJVz/hSTYzQ6qZk889bsvrizMEdJIn+1QhbrRXE/hB++nKmbHQxw1c0jytHtD
	Im3pqCahUP6Y151k2t/UVuGHnoJZ+VOll8R0hhULylrXdN1mN8KJRKWG67i4oxOF9RkGRqWZwqK
	CeAvYAP2Tpuk12GERBa6MvF/GUG585Cn4p/axBnRe/q5kRQTVOyjKb4FVTh7/R7e0Jfw0tRTxEE
	nYtoT3BYbFAoaILdKEnNrBVhpt9rkdNJow4l8KaDHcInfB9oBTr4Y3XzqYHPeTa+pl/1r2x06nD
	Ej8Xf1HvBgSd08EOsEzGHkYPvG9JWbKW9Dt0MLcOiqCWma/2sFhqsU/5GezYK3hOrNF0rmvZNaL
	Q3J9HTut8eTRKdBRhnBfpdshcYTQVqnZSyxY5DgAyQUtinuMWI3pc5uz8=
X-Received: by 2002:a05:6a20:d523:b0:38d:ebc4:b545 with SMTP id adf61e73a8af0-39545fca6e7mr7615239637.57.1771855987884;
        Mon, 23 Feb 2026 06:13:07 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70b71a75e7sm7214260a12.14.2026.02.23.06.13.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 06:13:07 -0800 (PST)
From: Bhavik Sachdev <b.sachdev1904@gmail.com>
To: alx@kernel.org
Cc: avagin@gmail.com,
	b.sachdev1904@gmail.com,
	brauner@kernel.org,
	criu@lists.linux.dev,
	jlayton@kernel.org,
	josef@toxicpanda.com,
	linux-man@vger.kernel.org,
	miklos@szeredi.hu,
	ptikhomirov@virtuozzo.com
Subject: [PATCH v2 2/4] man/man2/statmount.2: Document STATMOUNT_SUPPORTED_MASK
Date: Mon, 23 Feb 2026 19:40:24 +0530
Message-ID: <2bf71bae60b181c206326417047ece49f1113940.1771855680.git.b.sachdev1904@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <aZt6WFt5uATpgPDY@devuan>
References: <aZt6WFt5uATpgPDY@devuan>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.linux.dev,toxicpanda.com,vger.kernel.org,szeredi.hu,virtuozzo.com];
	TAGGED_FROM(0.00)[bounces-5206-lists,linux-man=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bsachdev1904@gmail.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6C272177DE3
X-Rspamd-Action: no action

Document STATMOUNT_SUPPORTED_MASK flag and the corresponding field
introduced by it. It is used to determine the flags supported by the
current kernel. The text is based on this commit message [1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8f6116b5b77b0536d2ad7482ee42bfe58b8fac01>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
Message-ID: <b537e03ab73d8677a53730311b5a3c11ff29a51b.1771855135.git.b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index f5a3721eb..843293e43 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -60,6 +60,7 @@ .SH SYNOPSIS
 .B "    __u32  mnt_uidmap;"
 .B "    __u32  mnt_gidmap_num;"
 .B "    __u32  mnt_gidmap;"
+.B "    __u64  supported_mask;"
 .B "    char   str[];"
 .B };
 .EE
@@ -126,6 +127,7 @@ .SS The mnt_id_req structure
 STATMOUNT_OPT_SEC_ARRAY	/* Want/got opt_sec_{num,array} */
 STATMOUNT_MNT_UIDMAP	/* Want/got uidmap... */
 STATMOUNT_MNT_GIDMAP	/* Want/got gidmap... */
+STATMOUNT_SUPPORTED_MASK	/* Want/got supported mask flags */
 .TE
 .in
 .P
@@ -340,6 +342,11 @@ .SS The returned information
 .IR smbuf.mnt_gidmap_num .
 The whole range of gid mappings must be resolvable in the user namespace
 of the caller.
+.TP
+.IR smbuf.supported_mask " (since Linux 6.15)"
+The ORed combination of
+.BI STATMOUNT_ *
+flags supported by the current kernel.
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.53.0


