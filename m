Return-Path: <linux-man+bounces-4498-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA41CDC8B9
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE260304C9FE
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D9B7358D1F;
	Wed, 24 Dec 2025 14:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="I/yRyXhV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C91AD3587CB
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587113; cv=none; b=cz35p5MrCZrXeAZ46BnjTzemSHiBkWviNe5YP+gCQDNUCbRONTunXrmE8xCSU6eRj+2EomLdj/xXyHHd2vSpOEOjs8BwraFfhj5bvpZXf7GyM1mOgywn+Z75Kin3NCi3oKBEyu77s3u5k/okB+wNINmZHvh1xb8JUMjmAtKiS08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587113; c=relaxed/simple;
	bh=MByktzvKZ6yucLNeA4H0tqcuBdW8LEZ61v7BOXx6JxQ=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=N05BCZrjGsliqo3oG8sJTjvmAVe2aNT6TSkr5MKGh1WmdOIU/hwF7Gdm8EAfnLYRDFjk8EJZ/Tbs+n3jDXR55qsFDaY9yvJFP5pKU7DJKM5c5MgTQaTsHFKZX3yu0gXvWRdFOKVOzrXazbfovRxGGbMNtfgZhayEGVRL2YxJt5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=I/yRyXhV; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587103;
	bh=hUbvnoRJA5GYKzz+/hGLfE/Zq/Cc+SYiv6WnDUEfYE4=;
	h=Date:From:To:Cc:Subject;
	b=I/yRyXhViLzB2//HrATG2V+uXu2kgkqj63TIn5oQ+Oxr51+XxYis4ReO1izZgYyNN
	 KaMs+VFRZbL5Dmw/rhYH2oqaPb3tyJEbbHYjNHwXuaDVjgHnkTLnQ3gGDHxG3TvBE4
	 dCN18z2bH/n27dLmJWrkseL5vfUocUgItGRPRam9f/lfSKpcZJGkKhYgRLblz0JmNx
	 Yqxt9iFF1DVJkYRxT1yp8w8lB22+TWVQ4mgf/1CUyWkojNqJ6zNsvW/R9Fq/d8m0pZ
	 t8UJGgMfvUTfdE1sua4kHaUrg13HuU2JmmrufPavARAxTTWrWcbHw3DhS8pfNbR+yp
	 oGoqIiXZyOM8Q==
Original-Subject: Issue in man page  PR_SET_FPEXC.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020931.00000000694BFADF.0031985D; Wed, 24 Dec 2025 14:38:23 +0000
Date: Wed, 24 Dec 2025 14:38:23 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  PR_SET_FPEXC.2const
Message-ID: <aUv633JB452XrwIU@meinfjell.helgefjelltest.de>
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

Issue:     "enables" sounds strange here? Maybe activation?

"Use FPEXC for FP exception enables."

