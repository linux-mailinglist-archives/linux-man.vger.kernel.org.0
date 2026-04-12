Return-Path: <linux-man+bounces-5322-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBRHKFqo22kSEwkAu9opvQ
	(envelope-from <linux-man+bounces-5322-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 12 Apr 2026 16:12:42 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E65333E42D1
	for <lists+linux-man@lfdr.de>; Sun, 12 Apr 2026 16:12:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A043A300EF85
	for <lists+linux-man@lfdr.de>; Sun, 12 Apr 2026 14:12:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2456A282F00;
	Sun, 12 Apr 2026 14:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kL0gUFNf"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55E8317155
	for <linux-man@vger.kernel.org>; Sun, 12 Apr 2026 14:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.215.176
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776003119; cv=pass; b=b5AFHcRQ/zKN2f/XNn0isdapTNN3PkXqivLg5J4+OcHQIY8HcmeQCOV2ftRFTPghVQChmq5xwyFzcvfau2UHYuOOAXJKFPkaocmekUCR1l0Et4HKPXiijYiQW0/WDNz57oNlL3pOI2HJHSNQMj73qEaG82AL+3wv4Fp730E2ibU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776003119; c=relaxed/simple;
	bh=EZIbvT61a0o2qMFXSzQ+/NMdvricPO9P+zOKiHf6MWY=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=h049hKdBq9VB2e/eNdyHgBvbTfX5FuADKr3ZL/PLyO7XnMas50dksxtbkfNPenyhzpSzR50mLO41SNXX1qeBTo+2Yp/xsSE0hUgXmtjlK9uOpUnqXfL+bPRlR+YbXgXoHN+uEEGcwePVDSOaN8vKH6qoklnQ8n7Hm1UgtCYejDA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kL0gUFNf; arc=pass smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-c648bc907ebso2531312a12.3
        for <linux-man@vger.kernel.org>; Sun, 12 Apr 2026 07:11:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776003118; cv=none;
        d=google.com; s=arc-20240605;
        b=ai/KYio8ai2CoGEGFw5tHziagYAD6mmmun33Fm1I1gpVshy8U+G6/fzHTWDqwvncg3
         bR4UnLR71RgKhklSZxxOgTYfgUSrkqsHMIeBzA9o9qzotaDqxPZMUIDcZFX56iu3uErZ
         HrCKfZb48/DTOLWyRCMc+9PnZ7iybU8Kp4ZaQecAnSr9on9YhegAuacA4pU5HkkM3Mw9
         LgF9bNw3qt+Tw4RhTQNNrbH86+uNrOVLKWPr/VjMI5jp05Y1yv/JZW2+sP4NiJzWYQ82
         Sn1louRHkTrQ0uhYr87rGnhW8VpWKVil34GA1mZu5Y2DYJAX2umOxAtW2qS6Bhn5P2SI
         GF2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=EZIbvT61a0o2qMFXSzQ+/NMdvricPO9P+zOKiHf6MWY=;
        fh=OclAtLKJTQTIvPXBcbgjquIcuF1L0TED2I15vb2Dds8=;
        b=BUslHvpxVR/lIn+RVEMnJT1HJXDnXr7KNOFOI6+ov1J7ZAur9dtYS9dU+Ah0Jew8o/
         luvhxfqsLFNcJvE1tTfpN9AUY6B/YxIV190VMJElYBJIxnDyHnAK0HBt4yiyo7it9NN+
         PNDaCh9auaTsXOo4/toW82nJfHhXi93ZNI317IG4gNqZ53aLFASJv2hFEZDgdlNEoTaf
         VV1gJ1U13msP//BJPWN5ixl/638U1UPGMuXPC6GyKS/0KsGe1uC9dLiFInedifCCPdOt
         XNJCzXg0+4D62c7bbScqtUcBgqZi7TrDLupR6Mq7ArYhj7uB0K9a0SqeXwnzOA0a5mRi
         PTbA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776003118; x=1776607918; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EZIbvT61a0o2qMFXSzQ+/NMdvricPO9P+zOKiHf6MWY=;
        b=kL0gUFNfWHR6QVV2aZM7p7FgTmcZapvfxRHs+VhpuUeSWjevF4Tg0NgOK0/gsJViez
         Je6OYdGmmjF5FXVHSC2HSgiIla9bCJTwsMFyFYNrWEBWNnebxGabRKiNWPL/+zbyu2z9
         vooRpkCDkbVHhQbQ3nWL0eQTo2Xa9RRA1tqJMCgGa8taUfj1IhKV30XGcZbd3z2D/NVV
         5ziyOxutSQRrmZnb91d1FbFaJBIXV9Bh49VdnVGBNDfRPW5Fhnj9hn2osE5Xht7gayIA
         sQuHqFyg6NNIeyVeBrR6hu6hFgR51fVYNHMjva0q/tjyJr6npG8h6H2TVykUffl7a75M
         DqxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776003118; x=1776607918;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EZIbvT61a0o2qMFXSzQ+/NMdvricPO9P+zOKiHf6MWY=;
        b=cOjlJpBoqGInV8Wdv03ZPcdAhe9A4ukLFBRDAlPjpoZEC+UySCQUbZLXxC72/BIYB+
         35vp234V1YOsYgOZrUOzVvTM/a5ErS8/KTp7bJ1GN7Lv4oWE4SjYD27yebXu5I3ltwr4
         JEjrzssWarlj1MqGQCxfQ+oc5hxheYB5Oh4uWibWC1OjL90qrLhJ17txDy9WePnoew6H
         /Ec0uifPGszR/9Vvw66TWWA6ei6MDdv6u//EZlNObmsgg8EMqA0t6kJREhV5MEHUxkKZ
         p4qKUvP3l40/qMSGXUEKSMoA46V3KqsFJQ/Ruao8ZKa7JbR8sHSVw34aeRwmrYiw9J84
         QTjQ==
X-Gm-Message-State: AOJu0YyNg0t0KEt/XQkC8lpErfIGOrK5Md8gukucRGtmW4GWpmkL0JI9
	qnjew1GU938bvcSPgk+5Dmnxb+hrN+e9+/mXqnjj4yxhRwGAUpIiozG8wOaWt3Ij5KhtXeOC4HT
	Zhi7LG3JIvA7/ZAn6BQrOmrnfKK61kayQH+bI
X-Gm-Gg: AeBDieur9s0XeXl4q0dSYCAuZO2dCq2/mW1CKVU+PiaNo6Hxz3A+DCEGaqPbQOJVajp
	LUC1x5CJD2y5n4cFtvSSDlROXNMjfrNCUQqOTzLoUri1KL2gnn4gCleFWEpTAdLwDmQZWmtvFpC
	qHb8PhuaawEwJs32ZWLHLL+T60W+lbiloKOh+UMhBvIqK0uX+ROjhIxsgyMe9GfdgDRN/ApZuhW
	981lLqvrFbINxRPpge1cOuPhGjsI6KTlRcf2BjaiMHddF4g1npIxQRMkdsnSikaMQSGPSgWp7K3
	tQIAPeyNyMI4GsLU+8IevF7urhfsXkAKbIB8BBoQ7uo2RiTvRPkH23oj0TzX60dGvW1GvZI8bA=
	=
X-Received: by 2002:a05:6a00:1a8e:b0:82f:3828:a00a with SMTP id
 d2e1a72fcca58-82f3828b18dmr1724210b3a.41.1776003118014; Sun, 12 Apr 2026
 07:11:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: =?UTF-8?B?5L2Q44CF5pyo6b6N6Lev?= <tubuannohagi456@gmail.com>
Date: Sun, 12 Apr 2026 23:11:47 +0900
X-Gm-Features: AQROBzDzTJilYkOJJoyzyiTGnewCZJ1gmpSflEm6g8pV9pw7y7k_J8J5iHfzCZI
Message-ID: <CAKcLgdirzdKqnaziRdYytN-zrVTjijtzOiirL5YJdWF8SSNf+Q@mail.gmail.com>
Subject: Possible typo/redundancy in mmap(2) SYNOPSIS
To: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5322-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	FREEMAIL_FROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tubuannohagi456@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E65333E42D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

1. Where: mmap(2) SYNOPSIS section.
2. Issue: There is a semicolon after length and it appears twice,
which looks like the function has an extra argument.
3.Actual display: void *mmap(size_t length;void addr[length],size_t length,...);
4. Why it's confusing: From a syscall ABI perspective, rdi should be
addr, not length. This notation might confuse users about the actual
number of arguments.
man 2.13.1

