Return-Path: <linux-man+bounces-586-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B79A87ACE7
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 18:20:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BC0A7B255E5
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 17:20:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 047BE50278;
	Wed, 13 Mar 2024 16:41:42 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smarthost01c.ixn.mail.zen.net.uk (smarthost01c.ixn.mail.zen.net.uk [212.23.1.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0576A1361C5
	for <linux-man@vger.kernel.org>; Wed, 13 Mar 2024 16:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.23.1.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710348101; cv=none; b=bcmIAoeNJi9Pl02pVo/TjKR4whcbOYV+KalvObxsidbkNRuk8MISBiU18Wvu00y3NkS5q7NVGhgGeKQsEDmVEP6KOaeN9vFi0JMXHzMJgPFHMw24phtPygQBSpr3g2eDsDiT7To3jRlRmJ/YpNL0hh3nBX3fVWCoi/6w69maRZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710348101; c=relaxed/simple;
	bh=YZ67pr2LQpJZEDxqDdYN+Y0uYaV5IAxkuTr4fzVrZks=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=l3KLgjVM1eXwRy+OnPiUrVx2TU5eEzRN6sPtxLYvvnFwnPxghDBE4C4GIFfOFtcLJ0TNLBCzdQ2M70CdhlKWosBH6wurg3kTYG1Ifue4bzDTyW+4y1GIi9Mm5uE3GA2anHiXg5y9nuI8Uq0FVJqu5UKmuRuKjcKmg/8ZpmyZ1pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk; arc=none smtp.client-ip=212.23.1.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chuzzlewit.myzen.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chuzzlewit.myzen.co.uk
Received: from [82.71.22.80] (helo=pip.localnet)
	by smarthost01c.ixn.mail.zen.net.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1rkRfS-002Oev-Ij;
	Wed, 13 Mar 2024 16:41:31 +0000
From: Deri <deri@chuzzlewit.myzen.co.uk>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Unable to generate glyphs for chinese letters
Date: Wed, 13 Mar 2024 16:41:31 +0000
Message-ID: <38015971.goEHkYunE0@pip>
In-Reply-To: <ZfGpZTxUo4EelRlK@debian>
References: <ZfGpZTxUo4EelRlK@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-smarthost01c-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80

On Wednesday, 13 March 2024 13:25:51 GMT Alejandro Colomar wrote:
> You would see a noticeable speedup if you install the perl module Inline::C

This can be satisfied with:-

apt install libinline-c-perl

Deri



