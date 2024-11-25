Return-Path: <linux-man+bounces-2064-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A209D89F4
	for <lists+linux-man@lfdr.de>; Mon, 25 Nov 2024 17:10:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 60E932843AB
	for <lists+linux-man@lfdr.de>; Mon, 25 Nov 2024 16:10:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8A341B412E;
	Mon, 25 Nov 2024 16:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="NX7yYZB4"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B8E1B4125
	for <linux-man@vger.kernel.org>; Mon, 25 Nov 2024 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732551039; cv=none; b=sWNqlH8nPylhFZ3hFwNOVe0Wmf3DVvmRCrvgezizquFAittxaj2RKk5dLBMfD4QcSVgJgoE31ZolKWqD3yWmBlrVBNQS/MtCdVBDTyyp+HhSJPPpM2LmDC/67ip69xsiPdnvvlnXGt3pQckQpb8qQGctQFEKqTW7aHp1I/c/Nk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732551039; c=relaxed/simple;
	bh=q30uNe8pEcrVWHGaOUAOPUzBDrN+hYdbKTmftFQBiA4=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Subject:
	 References:In-Reply-To; b=ImOjkN/WDVgLJjAfnLdJRpiheQ6tPNsXzfmf0a6brMlqVnDqpaYThj0A1FGsqG8G9erfX0Ur9hwaaZz7Zczp5xUDffEaB2ARv0ZguFTQJ4pf1FJVcA+Xj4HPvfLo4oB2BLqTg2As7Fnt+6WbEnQ0PqfosA4M2GzPTKQKWmIK7Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=NX7yYZB4; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id E4BE72538D;
	Mon, 25 Nov 2024 17:10:26 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cK_muhhJfWOX; Mon, 25 Nov 2024 17:10:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1732550929; bh=q30uNe8pEcrVWHGaOUAOPUzBDrN+hYdbKTmftFQBiA4=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=NX7yYZB4NGIe0ErDhGVo/NeKhCfCJxxRUplw0WP2Xfju5yKNlo5V9KKLHXXn3ozls
	 q4mtTmZ1cFeXfSrvsL1WkcXBeZNoOoLqO2ddQNHA2+ObnMrbJrB2AUGjzTe4fRAKS4
	 ZOlC/3uvp4vq+p4jRgXVncL9f/aoJXJUiAaE+HRdXueYAO7+KATlagmkw+/WBvsPhK
	 PcEh1BZR1GJ68HgU6K2sz3irGpDCE5+LF72TVO+IDWg0ka4UCH9gpNJlipC0TNI+Db
	 A5rXqNvooEEw8urVuMNWiPO1o5hd55/5+nvHZA091Y2pYOEjKQrGbj1zlQp+CMqgz/
	 DwGOIIFvs98VQ==
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 25 Nov 2024 17:08:48 +0100
Message-Id: <D5VE1OMV9LG2.3GYDJOAGFIR0F@disroot.org>
From: "onf" <onf@disroot.org>
To: "Alejandro Colomar" <alx@kernel.org>, <linux-man@vger.kernel.org>,
 <groff@gnu.org>
Subject: Re: diffman(1)
References: <20241125124404.h37pgmy2pxuzxevg@devuan>
In-Reply-To: <20241125124404.h37pgmy2pxuzxevg@devuan>

Hi Alejandro,

On Mon Nov 25, 2024 at 1:44 PM CET, Alejandro Colomar wrote:
> You may find it useful for development of manual pages.  If so, please
> let me know any feedback you have for it.  I was wondering if I should
> pipe to less -R, just like man(1) does.  For now, having doubts, I kept
> it simple, which would allow wrapping this in fancier scripts that for
> exaple diff an entire repository of manual pages (although that maybe
> calls for running groff(1) and diff(1) directly).

less simply pipes the data through if it's not at the end of a pipeline,
so piping the diff's output to less -R shouldn't complicate use in
scripts in any way (except perhaps for escape sequences if you use
color).

  $ less -R /usr/include/stdio.h | grep -E '^#' | wc -l
  241
  $ sed -E "s/^/$(printf '\033[1m')/; s/\$/$(printf '\033[m')/" \
      /usr/include/stdio.h | less -R | wc -l
  985

~ onf

