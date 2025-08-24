Return-Path: <linux-man+bounces-3618-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 152ACB330C0
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B54587A994E
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:47:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 388F22DA767;
	Sun, 24 Aug 2025 14:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="eugPM+Rs"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9693C2DF6E6
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046952; cv=none; b=ChrsQbgF5xQ7nNKy8JvHTzz1FzojVIy30gZ3XFDmJ3bpLG756VVTChuEB1pYvyLob4Dm60Iqj1IJeXhX9D0yvpOerIxSQTxdCwbKxlEcbowCGE5gANF87Np5tKTy8rICqcxK1lGfKRROoFX8AZdLh1BxiYvvLubWrHH5QePbDPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046952; c=relaxed/simple;
	bh=Mm+F4A7Ek370CDGzdsjc3XsHW7/kpa6qNBxWuQXgurw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=YrjNdY6LtCMj+YdnBWA9xUlXPg8+fpEgLF1jgCfaGFzjTfwe3DqrhVDFbkXrHxpcW2r1fPNJvPWKxF2GXreEklOfcNrn0pVR0IfsMkHwhfB5diJBa1dqzdcaatmqUr8uRfpZeImFTqkzqg2SiZJNIzVjbay4H9oFZv7O0Y/LYBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=eugPM+Rs; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046921;
	bh=vZNsNpI+9mIRMpbqWllxx/v4gTVTrq23TaORyzihkWs=;
	h=Date:From:To:Cc:Subject;
	b=eugPM+RsVY8UXzSC6NQ6SejtotoBlZcqytLA08XhVcu6va7KdFvNXyr+x/+x2pOmY
	 EdxYVvdoqFNTzMvQMDbWnI8ID/2yC/UiTurhD+BytJnUQOuuYJtuxOI/6PImyH/yAo
	 W74q6geRylSSjQ2V9gbaNc6WG4CTtu7uPwRIJ3glGoB5vXDdtVGdrn21iLa0e509VW
	 F6/M7JY2G2n2WFzc+lhrbDwHQTBcUHxLNECSv3Qk/+lNio9TxBKinQDDT0jJpQxRAD
	 oEEEwmr8Me3ourVP9JdUu7bPSp/yPZC0hxUdl0GwyTJ+54vmcGaVAAoN0nSm6WCHVS
	 FhrW1j1K8ba6g==
Original-Subject: Issue in man page attributes.7
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021718.0000000068AB2649.00139261; Sun, 24 Aug 2025 14:48:41 +0000
Date: Sun, 24 Aug 2025 14:48:41 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page attributes.7
Message-ID: <aKsmSYpPKR1MPD8H@meinfjell.helgefjelltest.de>
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

Issue 1:  The function → Functions marked with
Issue 2:  reads → read

"The function marked with I<hostid> as an MT-Safety issue reads from the "
"system-wide data structures that hold the \"host ID\" of the machine.  These "
"data structures cannot generally be modified atomically.  Since it is "
"expected that the \"host ID\" will not normally change, the function that "
"reads from it (B<gethostid>(3))  is regarded as safe, whereas the function "
"that modifies it (B<sethostid>(3))  is marked with I<const:hostid>, "
"indicating it may require special care if it is to be called.  In this "
"specific case, the special care amounts to system-wide (not merely intra-"
"process) coordination."

