Return-Path: <linux-man+bounces-1936-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 503079D02FB
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:47:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D1B58B23EF8
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:46:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E15917C7B1;
	Sun, 17 Nov 2024 10:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="EG4MGYQG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CBA716F27E
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840398; cv=none; b=K6vEx7L5iBcqjFlUd+9aU5c6mjZ0KfitPemS0rUIMqrQCYA17b6HBer/TUcOjFozUJbmayGOfZuh7IP49aifgOxGc/xalV8ii0xePNn73m3KpdLpRFqrt81VEhM+5Dr3c7UlI/eR+SDlHofeg0aQWT/fRA7YHEr9dX4I1G2BEQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840398; c=relaxed/simple;
	bh=5PojgqdJd/whDL0ccm9aAS5ow0Cim7sQdtZcFCw3Gmg=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=fFctO8b9nUWgBhEFXpvd3yQp87gex6F+xYe6Z9KOauGIBmrewoezGIVFN1IRtoP48xr6iRtDCwltaVneFJyYV8m8R0XtOpVljLKQf1TehJvIwduAsGFf0vyL83ej7c4u9EjmKSu121y4ennybxhoeGyDkrv3qbBoildm3eP/JSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=EG4MGYQG; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840386;
	bh=BcdRkoweO2zfPS1yxs1zreomXVAmIF2dZ9RjK/xNZbU=;
	h=Date:From:To:Cc:Subject;
	b=EG4MGYQGnOeVSv6ZVOMtwORRVWjpw20EB85q0acODpITJMn3bqRLXvVrTVQ+MyUvN
	 QTPtyPIjFDgJFRptv1WGBBfE3dNh3V3hqX6Yeh/LohmRTuOHHYYgh8yWG75Xy8G3Re
	 PDsFVCRXjnzvyP6kw+MK+KROhvAFMQ74fZU/pLiX6P+Ew3x1iDjRaOmsovjq0vIFvQ
	 h21UQTkkLlzcp3UkLUGds0f+HGDLf65pJYLEFsJBIkzT37CkIZTU+67DbhJ2mFmNx8
	 baAYEua+cGx3FZRYNtu/ovqeQztSL/JsVVJ8/IYOwfB0lZVgABIFLymvV8ZwVDs0gh
	 dJwL7KmNFfRoA==
Original-Subject: Issue in man page fmod.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216AE.000000006739C982.003FC623; Sun, 17 Nov 2024 10:46:26 +0000
Date: Sun, 17 Nov 2024 10:46:25 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page fmod.3
Message-ID: <ZznJgeQZ-zy4v153@meinfjell.helgefjelltest.de>
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

Issue:    372/360=1.xxxx => n=1 and thus as result 372-1*360=12 Why is this 348? Running this in a minimalistic c programm confirms the result to be 12

"The call I<fmod(372, 360)> returns 348."

