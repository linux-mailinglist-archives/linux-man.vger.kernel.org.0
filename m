Return-Path: <linux-man+bounces-3495-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C70B2C8D2
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 17:54:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 936AE5A5C36
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 15:54:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 946D728750D;
	Tue, 19 Aug 2025 15:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="dK0FVNsz"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o95.zoho.com (sender4-pp-o95.zoho.com [136.143.188.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E338E28BAB1
	for <linux-man@vger.kernel.org>; Tue, 19 Aug 2025 15:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.95
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755618860; cv=pass; b=i0kfLW2q2MNol3+KGCeAsZjK9NRsCUMBpc9Ik8vQ9OSUEEUm7ErDO/nLjgE8ef01EuVjxxWEsXb6yCgQSJDFuxpDzXMZwhfWBovRGXrFth9yPI/nGuUAk+rZrdofDGxnt8Xc3LKbRHTytk8o9URbynbymzG/eIuCZCy+XDi0kT0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755618860; c=relaxed/simple;
	bh=MBNf7zHHb2DyeoVi3YblpiQxZ1h5cghvAyFSFERZT5c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YH7yjcOHpFjmt1kSHxUvBoJCSWjG7WjhnCiyWYnbZ2/IcxqOh6RxXepkBLnzyTTHKVjc4wKsjmVKv9g1fvlnya6cad112GcMaBE3QIiAvRPegZq1WpBu/bZqDLL8exu1EEzUItE2em4Pkb4ashup14ns/+Aag/gwy1JhmufqogY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=dK0FVNsz; arc=pass smtp.client-ip=136.143.188.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1755618852; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=esRR1icLIcu6V/LhIwBkge2+zlwq0DTvGS/QRtIzsjELfUoYFHer7c2LjfJPO9RrrP39fcpMRxww3hCzHadZUBtMe0HVDKKBc+Ahb9fOH8mOcAT+T23200WSeRFjJat0iFneatVOIapiIBjrACLPZFXupRsvJRZlYuKj2Q0HyrM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1755618852; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=xOGH6t6uo5ufNVaPznWV9jVgRQRIm2NqO5hZn/gYAAk=; 
	b=OWCpTq3K2DS4aaE1wsiN9MHkazYovYasyxiPzwitYSP+GwLuIviwjp9Dewb0QX8pfz2VgJvpmmNI/sL9ads+AZpkuf1JOJMhZV5R+kofkCaFIGB2tMgrEGGai2VYkJVSQA8GMM/6o6YaT8uq3Ib7RfGAj1LzlHeo5852qzWPMwU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1755618852;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=xOGH6t6uo5ufNVaPznWV9jVgRQRIm2NqO5hZn/gYAAk=;
	b=dK0FVNszcPsT+vLzJZ+jHrgi+WdeJQOH5cT/Wzxga9uunszTlmoHXKEHjYacQ+st
	spOEd+wnXjmrVtWPXe+w0YXGhw39ButIrbFXwGJo+yMLG/CdUZkxqibvuKuVxFBPQ5l
	a1NyfK2MdIG/cmwDzMVyGFnNyN2jQjO2mQSPsE34=
Received: by mx.zohomail.com with SMTPS id 1755618849893807.2044979490477;
	Tue, 19 Aug 2025 08:54:09 -0700 (PDT)
From: Askar Safin <safinaskar@zohomail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 0/2] Remove all mentions of blackfin architecture
Date: Tue, 19 Aug 2025 15:53:58 +0000
Message-ID: <20250819155400.763253-1-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr0801122799b8d7741122fab78d54a98500002d812032250df587f3fe0dfb1995406a7d57e75b28a987d8c2:zu0801122701bb68c39b64ea4326f7c7ed0000ed6a049de6e04777ca2a1f62dc07ff14ca0f0187c548a97802:rf0801122c04fe5ccae1da7bde5c9052af0000c91e5287359ce78633bb3ab0e56aa2ca2eabee5a999c5c3b203180092255:ZohoMail
X-ZohoMailClient: External

Blackfin was removed in Linux 4.17, i. e. in 2018 (7 years ago).

Linux 4.17 is not supported (it is not listed on kernel.org main page).

Also, I fixed pread/pwrite-related mistake (see commit message
for details).

If you apply this patchset, I will send patches for removing
mentions of all other archs, removed in Linux 4.17 and earlier.

Askar Safin (2):
  Remove all mentions of blackfin architecture
  Remove pread and pwrite from list of syscalls, ever existed in removed
    archs

 man/man2/clone.2    |  6 +++---
 man/man2/fork.2     |  2 +-
 man/man2/ptrace.2   |  2 +-
 man/man2/syscall.2  |  2 --
 man/man2/syscalls.2 | 16 ----------------
 man/man7/vdso.7     | 17 -----------------
 6 files changed, 5 insertions(+), 40 deletions(-)

-- 
2.47.2


