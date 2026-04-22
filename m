Return-Path: <linux-man+bounces-5365-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCsaKYql6GngOAIAu9opvQ
	(envelope-from <linux-man+bounces-5365-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 12:40:10 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D140444D08
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 12:40:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 76B1A306DA5D
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 10:37:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E40C3C13FD;
	Wed, 22 Apr 2026 10:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="d3ZcMsuH"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD333CBE93
	for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 10:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776854275; cv=none; b=d7ToEy8fo3M4r9/Q0fIOpfKch0oMj39RwX0PbcdAxO6rfwvKlz/oVam4pcUkAsJLOWL6fBsxdB37M1DWd9QUgBHG7lL0vElBFvwzHfx6JpMCrQJ8WmvOC9m46AW1BiHOzEkle6WJPKv5xhnWsyWO+CCTFmq7UstkW2aV/Qs9Eu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776854275; c=relaxed/simple;
	bh=6rMjqb46lqPiL4L2Ai1fVZw//EIFg5uxTkWHyEy8TN0=;
	h=Message-ID:Date:MIME-Version:To:Cc:From:Subject:Content-Type; b=ljMkR5LKaRU+5tMo2wG1smdupF4x6hDn9ccekvkvrjPRMyK3oA+5sldEZVmAya8nc5L17luaO9aRoxxPzgaITkYLY5wXLJjp3Q3wW/yzQxWHcRcPj8UJ/NzIE5H4XP0qp7iI5lVE1T/3PCewXyMrGSsRNiDY+gr5BvMGKPFcvgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=d3ZcMsuH; arc=none smtp.client-ip=80.241.56.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4g0wfJ4pqYz9txj;
	Wed, 22 Apr 2026 12:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1776854264;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=6rMjqb46lqPiL4L2Ai1fVZw//EIFg5uxTkWHyEy8TN0=;
	b=d3ZcMsuHwoVidGvBZcdcEBwHH7TmJN2fxA8TP1b97MqddmnppWb/QMnGxgBRSMrzKp3cua
	vzrMFna4sGzS8PvAqVGJ9dHsqyVA7yWRdnrSvYV5/2chpiTWou5KLAzOw2kuvFwtvVuqo4
	FufVfTgbd56nvCQ8TqInVDqrBdXNPccL2RLvM7dgO9R+bA0xiSyPwQO8KWN3B+ucBEVfHS
	ByV9HsyBexIV0RdfzRHrVED05mgoQeeaztvO8rH6iJNJRkK8ox3j3F/LpPQqOLCNa5KfQj
	IWo8SF8VCzBudWeZphIklGIpniZGZUPS0horQPyU15IJE6ghvz8CT6Dixn+kgQ==
Message-ID: <c088a5a9-f415-4cd1-a12e-ca72910a9ac2@mailbox.org>
Date: Wed, 22 Apr 2026 12:37:43 +0200
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
To: alx@kernel.org
Content-Language: en-US
Cc: linux-man@vger.kernel.org
From: Zeno Endemann <zeno.endemann@mailbox.org>
Subject: Inaccurate description of statx(2) stx_blksize field?
Autocrypt: addr=zeno.endemann@mailbox.org; keydata=
 xjMEaQTnsRYJKwYBBAHaRw8BAQdAaM0iP7BM4cim48CUrxLA/GL1pYCCEzcWwMWZpif6rNXN
 M1plbm8gU2ViYXN0aWFuIEVuZGVtYW5uIDx6ZW5vLmVuZGVtYW5uQG1haWxib3gub3JnPsKW
 BBMWCgA+FiEEmC5dRIssSc8usW9ctw5fyLMNvKkFAmkE57ECGwMFCQWjmoAFCwkIBwIGFQoJ
 CAsCBBYCAwECHgECF4AACgkQtw5fyLMNvKlmYgD+LcbsvEZxyegeAcyvZXvpZBEjHXqkdM90
 C9QVC1CsW3IA/jqxTNUPJZ26XR3/d7XcWMFg5JRZyJdL7dP+7crJeMkGzjgEaQTnsRIKKwYB
 BAGXVQEFAQEHQHFzaxdORLfIxXTm1tjSnTbboFXL9tw5GgcNA4Nz0AQiAwEIB8J+BBgWCgAm
 FiEEmC5dRIssSc8usW9ctw5fyLMNvKkFAmkE57ECGwwFCQWjmoAACgkQtw5fyLMNvKmYmgEA
 xY2IpTWenWoXXSyhGUWu/ZfdRUsUBtYM5wSj7XeayCUA/0/dEWSKHsuxuFgvaetZE92+qjb8
 HkxusIwKIh1rafYI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MBO-RS-ID: 59e2bd15944506b0808
X-MBO-RS-META: udhohd36i5fu37t6hswtca93zap3oihz
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	SUBJECT_ENDS_QUESTION(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5365-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[mailbox.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zeno.endemann@mailbox.org,linux-man@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mailbox.org:dkim,mailbox.org:mid]
X-Rspamd-Queue-Id: 0D140444D08
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

Currently, the documentation of stx_blksize in statx says:

 > The "preferred" block size for efficient filesystem I/O.
 > (Writing to a file in smaller chunks may cause an
 > inefficient read-modify-rewrite.)

I believe this is misleading; For ext4 this field is set
to the ext4 block size, but in that context "block size"
refers to the "smallest allocation unit" (which is chosen
at file system creation time, see the mkfs.ext4 -b option)
and not the most efficient I/O size that avoids the need
for read-modify-rewrite.

At least to my understanding, to avoid such a read-modify-
rewrite you rather want to do writes in multiples of the
page size (i.e. sysconf(PAGESIZE)), since that is the unit
the page cache operates on.

While in many cases ext4 will have a block size equal to
the page size, I think it is strictly better to use the
page size directly for that purpose. Or am I mistaken?


Thanks,
Zeno Endemann

