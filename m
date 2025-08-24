Return-Path: <linux-man+bounces-3564-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6630B33088
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B9D35203B78
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E3FA2DE1E0;
	Sun, 24 Aug 2025 14:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="qdXZiqfo"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A18092D979B
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046925; cv=none; b=DGBX5HZ3J0drzAakDiNPge+ih6t29igEyUaJJFc6iJErMsv8QHyL2+G23TG6U6at8/xxtYiQqxQTiMiEfltndCfD9Atragnak6MOl6RdhisWQn7bMVnBSmCPalBdDJ0VEvN8+yLGHL7HJAMrpz2aPp/TIk1z5XECfqHPtM2xqms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046925; c=relaxed/simple;
	bh=wH2iA83ZpiUeADxnn5uAgXmt+SacxtS/mOQlnTBQ4iQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=LfAhCBaZS5rqevD7oRw5LkOuYlN/JtdGqogLs021j/UstrRt5ZWooVHLK9xoXMmSroxH4wFWx6jPNGk5zbtl5BhyVozHdoBnbFJ8rTeXVEWn3rran7iO2ad4pr2jEXM3O+wDhAyVhZkRPrdlfIhLbeBSMriK4CJvx/Ur1CGJ9Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=qdXZiqfo; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046915;
	bh=ESkRRUO1ocr4ZWRmMx9obp2gdpOi+OAks9Owvx8HwNg=;
	h=Date:From:To:Cc:Subject;
	b=qdXZiqfo1HRK6cVGARmFfGnMghGWuvNCa1n+XXcpbK7A01aPcx11QMjyQrwCEi31H
	 bf4v5XJQJoo18wokvTf8cc9RmVt3DMSlMkgH6IWotsXd8SEgkEU0WJNt+vLex7N9D/
	 +MlkuNEosAJXMoVlv8qJ+TU4J7MG40oGUJA4fMVj/e6/Meb9Lqh1IUDZtXQlSQa0zQ
	 uiaTsj56LawvzBbsT/A15ENzR2ZlfVnpkOLOI1jBGc2XQgv+znew7ZIXt14UkBun1d
	 ffo3wWoCc8q+7kAKFL6V7wxsLbs+Exg/wRF4xjVmeR1dbYQc4u5GHnJnNGG33gZF9i
	 kl4En4Jena9jw==
Original-Subject: Issue in man page suffixes.7
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000215DE.0000000068AB2643.00138D19; Sun, 24 Aug 2025 14:48:35 +0000
Date: Sun, 24 Aug 2025 14:48:35 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page suffixes.7
Message-ID: <aKsmQ4FJIlUvX9uS@meinfjell.helgefjelltest.de>
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

Issue:    tar(1) → \\f[B]tar\\fR(1)

"tar(1) archive compressed with \\f[B]compress\\fR(1)"

"tar(1) archive compressed with \\f[B]bzip2\\fR(1)"

"tar(1) archive compressed with \\f[B]gzip\\fR(1)"

"tar archive compressed with \\f[B]gzip\\fR(1)"

