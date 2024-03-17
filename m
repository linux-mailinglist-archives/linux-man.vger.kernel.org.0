Return-Path: <linux-man+bounces-629-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2AB87DC6F
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 07:37:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 830F4281B4A
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 06:37:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F34779E5;
	Sun, 17 Mar 2024 06:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="f9MQDayk"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC6A4C9A
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 06:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710657474; cv=none; b=ivepDmvDbZ1NdYS8OEkveN+8s+M6mPHglw75MDmQa8V7OFFgGT6cBWeNDLFaWJgS6yBS8GWTbdm/+UN5OcLr8IXN+vQPpiByqsTGCPKcqS7vXuvub4f7zGi98egs1wzir2S8gpxBK8t3KkmwsOIVuARx9Pk6kYhz/1S1/zPRVbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710657474; c=relaxed/simple;
	bh=FinCanTMZpXNP+Z+YETFJvGfrYkWDfd0jvfVT34USnM=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=RI8L8PbtHab6AIbzKguetC/pAHLw1q8zFnrV2o+GeH3qCxX4TPl3gUYYVPvpc6/pAhSO41R7A+FYWl9kWAFwVIRAIe2Dx4C1Lwg6ubBWB0+gsa0XH7xhwEGMV7r8bIP5j/9myqB1jEE98/BW3bnXjVSXI+fdbs1tgM0aUYSEx44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=f9MQDayk; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 538C740EF7;
	Sun, 17 Mar 2024 07:37:42 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kGuv9kSdpM8Y; Sun, 17 Mar 2024 07:37:41 +0100 (CET)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1710657461; bh=FinCanTMZpXNP+Z+YETFJvGfrYkWDfd0jvfVT34USnM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=f9MQDaykdCmNAm2VkOT0ugwB+DPqxUbSa1lO+9U3IF3dSFMlCiOgkDvQUVy4Ie1ms
	 1ou2nw+2JbauUAJJXMlqAZwZSBOfAw06xgUD1qj5ufeToRaxVHHqT3aRMa6ifJc0hm
	 2enOkgXIWpSthKA9J0+AjBQZsnj1r5rU07/8sgiJObe9uPPPlzKHY9ePGqfqpm6DOl
	 bylMgOQs3fafUGB0vVsXrC9Z2Zk+ZaIlzewn0XUjtfgvrPTXeKTln7f6B26hubjvpC
	 gKvNapjqcRocVL/3XEYnZ4jmXLh2L19mbe5WZlreOdrYB/tpC8qcqv1nYm4P3aH/pc
	 y2juyntA7Tldg==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 17 Mar 2024 19:37:32 +1300
Message-Id: <CZVTGGVFZWX7.20ENRHRXYB879@disroot.org>
From: "Jeremy Baxter" <jtbx@disroot.org>
To: "Alejandro Colomar" <alx@kernel.org>
Cc: <linux-man@vger.kernel.org>
Subject: Re: [PATCH] intro.1: Revise
References: <CZTT5VGOOCL4.2QQZNEEZ611D1@disroot.org>
 <ZfTdm593ob_V1XhM@debian>
In-Reply-To: <ZfTdm593ob_V1XhM@debian>

On Sat Mar 16, 2024 at 12:45 PM NZDT, Alejandro Colomar wrote:
> This patch is too big, and changes too much, for a single patch, I
> think.  Please split the patch into smaller patches that do one thing,
> and document those more precisely in the commit messages, instead of
> something generic, if possible.  See <./CONTRIBUTING.d/patches>:
>
>        -  Send logically separate patches.  For unrelated pages, or for
>           logically-separate issues in the same page, send separate
>           emails.

Hi Alex, at the time of writing I considered it appropriate according
to that guideline but yes I agree it is too generic.

> Please use semantic newlines (see man-pages(7)):
>
> $ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
>    Use semantic newlines
>      In  the  source of a manual page, new sentences should be started
>      on new lines, long sentences should be split into lines at clause
>      breaks (commas, semicolons, colons, and so on), and long  clauses
>      should be split at phrase boundaries.  This convention, sometimes
>      known  as  "semantic newlines", makes it easier to see the effect
>      of patches, which often operate at the level of  individual  sen=E2=
=80=90
>      tences, clauses, or phrases.

Sweet, will do. Thanks!

 ~Jeremy

