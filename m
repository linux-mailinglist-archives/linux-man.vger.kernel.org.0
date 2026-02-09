Return-Path: <linux-man+bounces-5063-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBJnBfRPimmbJQAAu9opvQ
	(envelope-from <linux-man+bounces-5063-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:21:56 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A19114BB2
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:21:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6DFD83001C69
	for <lists+linux-man@lfdr.de>; Mon,  9 Feb 2026 21:21:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F77F30C60D;
	Mon,  9 Feb 2026 21:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XEwsYxnR"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D57E3064A0
	for <linux-man@vger.kernel.org>; Mon,  9 Feb 2026 21:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770672113; cv=none; b=RLyeNVUOwdeaOnre0eoau0paqQpasgRBOiZ4xpu14ScPFWbpozG/NxDHw4KRRGt7SUSXhsSD0tRDW9uqYpZ8rr9mYPxSYuY3EJ/VW8IKnyh02gHTIMw5eZ9NXYzmI1DnveVT5fxP/87TKCQ821hZuKE/2u4AiR8S0RUj3lkhTc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770672113; c=relaxed/simple;
	bh=Z9X/6fx1iQr7hXqXcpEp0IJO6CZESduZOnDLz7fhcAk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dYZMTd5ckp0gCBHhBqbW5j4PaRwfq9tYEy+cWLoii41PenxFVfr7zZ8g3VjYhPL2YTWROn9Czjlf6ycBKyUOWo/ay7fz8SSMMjXkal/G9bTmHbIqqb01wICt/7ogJL0u8EbztnYf906V2JWVrL5okBnlF+okNxWzDO9WJUeNU28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XEwsYxnR; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2a77c1d5c3bso546215ad.0
        for <linux-man@vger.kernel.org>; Mon, 09 Feb 2026 13:21:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770672111; x=1771276911; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sG/qQmoq1CdJJfJtXVsTBW+1id/8+QyYUwM6nNDLPjg=;
        b=XEwsYxnRGkaW1Zc+E1Y8+NbeHQyI+0qErHxpWcK2TiTUBJH1QLxMANw+rQfU+mZKbj
         xuJkKbCmB3Zaf3XkKPnHKOf+A4y0Q17RAq+LGeFpYyUcYA6JuBOY/fl9VZ1z3kkb344P
         bsKeLII8xH6jEDtwUjRrLj7ZWXdDfI3qTiujUmBtp4d2NiDz769X+s440WM45LwV+xsY
         FDR6xQEc2vNVKsr/AMEATDZSU2e/87btZ0u0psqFOcFToXCTPfAJLOypDM/QcFA+qQua
         LpLZ66AIzhjIHDXbzlo7ex+mu/jY4prI8cD0cA6J9zkf5CA8T3PWLenXay77w9BIpYCn
         Z1Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770672111; x=1771276911;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sG/qQmoq1CdJJfJtXVsTBW+1id/8+QyYUwM6nNDLPjg=;
        b=uxP8eSiYq4n2ogi3jz+EwSxiwR0Zez2/qZ8CxVXfCeX4RxutwAFZ72jvz3dF942kRg
         pkP9Xem/y1W/wzJjS7LmNTljybHfldZXEM57ShaFzvAiio6ZntddxOx03voPmliD8dTh
         al/2qBUL6Q/s0KgrgTIxJ+hBxHo0K2bZy1TAaX9u9070iID0ST0GtSxtbMh/pOLIBqT9
         N3628E73hZEfzeBpXd+T0e95LPUI/F4bkLXuAn5EZExl58LJCJWQImzM7eLQPbVumgxB
         uerKeAoKWGBPhsXpMN9ZLCCLeBQmD14x3vV/4NlYwijPTAZ7sPWi2A+vRY0WhmvsA/oB
         AU7A==
X-Forwarded-Encrypted: i=1; AJvYcCVUaDFQiZG6c1JB7NttQmZNCBPCdS1xWY8deCrkdQG9n5j7MKavXI8JtS0uDUK81q1o8MFkqvVVMa0=@vger.kernel.org
X-Gm-Message-State: AOJu0YyhvAn9K42I8G5NvPGkTA+fArF8lVlhCBI+XXdCTHqLJA5WQsia
	s6r12TWYepsumfUkKLY+/5BbwfdCLfT9wOmyJRbLBMfqcIJo4vTgh2vX
X-Gm-Gg: AZuq6aIkCadIhyw9WEA9AIYdOMx1FEufEqbmBP8acJwZ9ieFUUUT3sbq7VCkP4MwzAT
	YO+kcNz7/mzeRUNp7b7SDEwTQUs0NnXE+nxOATk41TRaFOJG5ySfrOeo2eMZ/OaW6f+c+hJX9Yi
	ErcbbpJUnO7KkKo7wqqRo0Go2MjCdvGTrysbRoVaEDY4n02Rnsx072DmaUxKBjaxDwaZQZDGzuv
	FJH3zj1gvWJzYDGP9MpCxL+f/SKwiUr5/+tW+hz9vxnMBflPJ00VaGXQQ5gj+c6z+0EcqX5uogs
	cwa8SSqk37SX3nSAX1lRvq9sGeQjf+dEwyB3FhXiM1x8LyRhcJTVm2+UGpcO0EwlI/csvhaHykA
	cPgP3tk2v5mh/J5bGrHfksDJPG/QAI5T65P8CbDGfiN9A4qPwOTlVcevHqu+S5Cc2PqFI7U9QWv
	uekWgQGCE8qzAn2zVtAjaI/GmMmjuvzMAHtGubplb88Eo=
X-Received: by 2002:a17:902:f611:b0:2aa:d29f:1441 with SMTP id d9443c01a7336-2aad29f16f3mr64402955ad.2.1770672111230;
        Mon, 09 Feb 2026 13:21:51 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a9521f8a50sm121346305ad.80.2026.02.09.13.21.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 13:21:50 -0800 (PST)
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
Subject: [PATCH v1 00/10] man/man2/statmount.2: Document New Features
Date: Tue, 10 Feb 2026 02:47:33 +0530
Message-ID: <cover.1770671863.git.b.sachdev1904@gmail.com>
X-Mailer: git-send-email 2.53.0
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5063-lists,linux-man=lfdr.de];
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
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 84A19114BB2
X-Rspamd-Action: no action

Hello Everyone!

This patchset documents all the new features added to statmount() since
the syscall was first introduced.

I did work on the STATMOUNT_BY_FD changes and I have tried my best to
understand rest of the features and document them.

I have cc'ed the authors of all these new features, please let me know
your thoughts.

This patchset is also available on github [1].

Changes from RFC to v1:

- Document req.mnt_ns_fd as well.
- Fix all lint errors generated by running
`make -R lint-man man/man2/statmount.2`.

Link [1]: https://github.com/bsach64/man-pages/tree/man.2.statmount.v1

Thanks,
bhavik

Bhavik Sachdev (10):
  man/man2/statmount.2: Document req.mnt_ns_id and STATMOUNT_MNT_NS_ID
  man/man2/statmount.2: Document STATMOUNT_MNT_OPTS
  man/man2/statmount.2: Document STATMOUNT_FS_SUBTYPE
  man/man2/statmount.2: Document STATMOUNT_SB_SOURCE
  man/man2/statmount.2: Document STATMOUNT_OPT_ARRAY
  man/man2/statmount.2: Document STATMOUNT_OPT_SEC_ARRAY
  man/man2/statmount.2: Document STATMOUNT_{UIDMAP,GIDMAP}
  man/man2/statmount.2: Document STATMOUNT_SUPPORTED_MASK
  man/man2/statmount.2: Document req.mnt_ns_fd
  man/man2/statmount.2: Document STATMOUNT_BY_FD

 man/man2/statmount.2 | 166 +++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 162 insertions(+), 4 deletions(-)

-- 
2.53.0


