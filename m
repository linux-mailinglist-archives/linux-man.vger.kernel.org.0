Return-Path: <linux-man+bounces-3663-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6955BB330FC
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:51:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2EDAA3BB803
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7478D2DEA7E;
	Sun, 24 Aug 2025 14:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="luKxtcJ3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81442DF6E6
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046974; cv=none; b=kRw8+ZS+lmypYJ6vJpcYJmTHEBLM2ies7Iicn3BHldiTKRR7ldtO8qQXUoqmFqpARqy23gk9IgOPPd4ikpqHwxWloT8t+PHeVaLI4GkJ3aOJtSjUhpFpMJ0kKxT4VEf6OBVll05oShpXOm3VtZujOreoFQllIei+JhQaMbZZPAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046974; c=relaxed/simple;
	bh=L8cjRYa396NLiK1cbNPMji0Kb/xRkOpFUem1qAnW3ic=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=tDbhWQY9qJHGbt8u7xGvDS5iadycocwMhmKKOIx+aW3OElfQS93ukfKIeAHqHlGt4XMwVuy3+J3RbByXEqneiSVe/8PLATqVICNOy8+6jkZXi1Paj0MfTeKxOekE3UJjUgmEtqA1BGerC+eEPs+g3O6yqnUfGRrrWzU+RZ1Na98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=luKxtcJ3; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046927;
	bh=0afcAGgaP25yIT96tLPYr/YXAxh2VZuc71tg/ZuAfNA=;
	h=Date:From:To:Cc:Subject;
	b=luKxtcJ3b6QpFD+CJMTZ2uw26iv74SHGRb21WW4OK9eAK6Z5E2ygx44jvekibPU1d
	 aPnxGZTKH9RE9Pq7WkT8xuyFEFcZWErPmLh1S3EaiLYh7mTi3xXomw4rihYPemUh+C
	 lnM4pRV5AKTgu7Oj8qLc+mt5QUulecASMePG/OMtjlRzfR/2I0VW2EqhKrJfeB09Km
	 UxEv8wZYmo8yQz93WtXsAFytPtmDxMRGz3hDEVzqXjiOMakyFZbrQZTXisfvqKx7Sg
	 pyYvaGTWcEnefVuhLxoz0hcv3Yohldk1Ed5SGQ1ulvfoz7d8FG9P5ehql3P80T0cc9
	 4nHMPnpFCa5eg==
Original-Subject: Issue in man page printf.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021769.0000000068AB264F.001396C9; Sun, 24 Aug 2025 14:48:47 +0000
Date: Sun, 24 Aug 2025 14:48:47 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page printf.3
Message-ID: <aKsmT_XGz-36a7Nx@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

Without further ado, the following was found:

Issue:    B<int vsnprintf(>size_t size → B<int vsnprintf(size_t> I<size>

"B<int vprintf(const char *restrict >I<format>B<, va_list >I<ap>B<);>\n"
"B<int vfprintf(FILE *restrict >I<stream>B<,>\n"
"B<            const char *restrict >I<format>B<, va_list >I<ap>B<);>\n"
"B<int vdprintf(int >I<fd>B<,>\n"
"B<            const char *restrict >I<format>B<, va_list >I<ap>B<);>\n"
"B<int vsprintf(char *restrict >I<str>B<,>\n"
"B<            const char *restrict >I<format>B<, va_list >I<ap>B<);>\n"
"B<int vsnprintf(>size_t size;\n"
"B<            char >I<str>B<[restrict >I<size>B<], size_t >I<size>B<,>\n"
"B<            const char *restrict >I<format>B<, va_list >I<ap>B<);>\n"

