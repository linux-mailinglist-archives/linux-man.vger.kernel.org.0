Return-Path: <linux-man+bounces-1784-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 261F5991BC0
	for <lists+linux-man@lfdr.de>; Sun,  6 Oct 2024 03:24:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA30F1F21AA3
	for <lists+linux-man@lfdr.de>; Sun,  6 Oct 2024 01:24:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E14BA932;
	Sun,  6 Oct 2024 01:24:38 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp1.bureaucracy.de (smtp1.bureaucracy.de [80.190.133.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0734C74
	for <linux-man@vger.kernel.org>; Sun,  6 Oct 2024 01:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.190.133.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728177878; cv=none; b=CEkbEDuzBFf1HdxZqq1VqyFgaVkM9likzDWQtdrc6fjFyBQ734LHUFOUBN4W6gmwn+sDwvEQKRH6h9i6xG8Tfdlv7T55Uu6cL9H4RCE0ls0LJPFHaqhCsSvHDNcAKpqKjDcL8C13F+iwEExogP9AmbYsZx6b32O9q/0wmxfY4E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728177878; c=relaxed/simple;
	bh=JIDRXxrkiCGnLTZ7xRg227iydTnj1mSrbAgXed6Pe6Y=;
	h=Message-ID:To:Cc:Subject:MIME-Version:Content-Type:Date:From; b=HJ3pd+L4c9OVq1ydJ12g6SCQtsSh4MsB6Tn/dyu8pkWSy3HjQkiTHn3ZFAzXQe3JlWLoDhUkABm+eaT/B1jh9KBKKeLJT5VMUbt07SGEfdOgsAN7kaEUQXe8SZSIxOSGBchE8wI7nOW3XR7ArbYQMUIv4YLYuR15WcuC2wHW+pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bureaucracy.de; spf=none smtp.mailfrom=bureaucracy.de; arc=none smtp.client-ip=80.190.133.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bureaucracy.de
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bureaucracy.de
Received: from localhost (<unknown> [2a02:8071:7111:c540:1974:1e1c:d1b8:7af5])
	by smtp1.bureaucracy.de (OpenSMTPD) with ESMTPSA id d500a7ea (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Sun, 6 Oct 2024 01:17:50 +0000 (UTC)
Message-ID: <67816c00225a0e945f73e22641d4f299.philipp@bureaucracy.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: bind EADDRNOTAVAIL at wrong postition
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <404810.1728177468.1@hell>
Date: Sun, 06 Oct 2024 03:17:48 +0200
From: Philipp Takacs <philipp@bureaucracy.de>

Hi

In bind(2) there are general errors and errors specific for AF_UNIX. The
EADDRNOTAVAIL error is sorted at the AF_UNIX specific errors. But in
posix[0] EADDRNOTAVAIL is a normal error.

Philipp

[0] https://pubs.opengroup.org/onlinepubs/9699919799/functions/bind.html

