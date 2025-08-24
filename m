Return-Path: <linux-man+bounces-3595-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3FDB330A8
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 482DC7A6080
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E76402DECDD;
	Sun, 24 Aug 2025 14:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="PEnrWKoV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682012DECD3
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046940; cv=none; b=Xq2u7ej66O5IZtc9TROOlflv3s2ISTiE43/+kQJ3ASARVCRmymAjsd4A4ijJGHyux4qu0Wpe2KLsminLl/kQ4uDjfMCJ3KDQQ+YCNtLtChHYG9q253lhwMdyTVDZ6VbNq2lyPaYlvlMLBk+a+ZRNDHm0gPcSl0Plulotuk+Xz18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046940; c=relaxed/simple;
	bh=9tfHZDcOca66SCArpEdCRVfHF7vPfsBxRjhC7Gd8L/E=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=qno6SrFvodacdwWwkjIYY77RUwvBeQBrPYDDtBDHYLbx/zIbtcRmGGpb47tfySSRUVz4JURvEWL5EcLsDGrS5Coastrr21GKiEpdlHTNtVf2AhCLO/ZjHG5w9t0s553O0qujjG76rSAxiZ3Vd80VSCW6WP2xZyCkIvM4DcUeUBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=PEnrWKoV; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046919;
	bh=2eC2+vHPn7l05s6PFr1HCD+JWQtmLfZ3uVxHKrwAR5I=;
	h=Date:From:To:Cc:Subject;
	b=PEnrWKoVSk+QjCBug/zRpKwkTAm/7k+rjnnb13u1hyNgVFm3lictOdMBcSJVVB29Q
	 ui6t8h2d0TMtxSCXHAt6xrQh/IRAqg11ffbAPKlz1C9DvT8x4EmPeFXzypK1H8XHiW
	 toDHlI2sDQnF9lTmfL/KogmFq6i1dhLkp818HZepKD9DWydeVmXHncssr5Or7IBoTd
	 5XmW+OS1gPOOTnzwpvdVG9OUWiQXD7WXmaqi/P2xGsC1Fcr5ZybC/Pf4R8bF/P30O3
	 XNYOQ2uZMHEwS9iWqCFh1lK3x6WHbgMoIy72YEtvHMZYOfBAx8ggqE/RKKB1S6GMa0
	 Z9Ag3h/5eQeLw==
Original-Subject: Issue in man page fgetpwent.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021117.0000000068AB2647.00139022; Sun, 24 Aug 2025 14:48:39 +0000
Date: Sun, 24 Aug 2025 14:48:39 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page fgetpwent.3
Message-ID: <aKsmR0fBU3ycNnmb@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

Without further ado, the following was found:

Issue:    Does this mean, for glibc 2.19 both options are applicable, i.e. _DEFAULT_SOURCE AND _SVID_SOURCE are necessary?

"    Since glibc 2.19:\n"
"        _DEFAULT_SOURCE\n"
"    glibc 2.19 and earlier:\n"
"        _SVID_SOURCE\n"

