Return-Path: <linux-man+bounces-943-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3C98CA473
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 00:29:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EBFC81C20D36
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 22:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4049831758;
	Mon, 20 May 2024 22:29:23 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from joooj.vinc17.net (joooj.vinc17.net [155.133.131.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 822352D05D
	for <linux-man@vger.kernel.org>; Mon, 20 May 2024 22:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=155.133.131.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716244163; cv=none; b=kRbzs0wX93puJdobKNbRueKTpo6n8NQ7feXC6aQtBhGx5CjqJAuR/HtsEPDN0EtAPhrUUJn+176Dl4o0NuJUS9OLNRhwke2ywjOs47j5us4FytvM4oOXZZMhXLf/itOXcYx8vnVkKf1ljH+mHtnRM8yY8+onhFDPRqoAjKisGFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716244163; c=relaxed/simple;
	bh=zdBye5apDhWqQCyFlcHUBOAFhXVdjCoyCgXj5F7Hvq8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ve9udfJnljlZGHnhn9h31NFHCdhcs3DXJ5MpmIPx85KXaDiaf4tr8lPJU1KGX11xgixhYsoIZY3yUo+CoPoIPdXUGmlKfs5B7WZbJqII/N1uUA5yEQC2waaJosQwtjEP/8vHkAeWZs7XxRWNDI2wZe/RmREZiJICHBH4hWM8p1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=155.133.131.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from smtp-qaa.vinc17.net (135.197.67.86.rev.sfr.net [86.67.197.135])
	by joooj.vinc17.net (Postfix) with ESMTPSA id 05DEF481;
	Tue, 21 May 2024 00:26:59 +0200 (CEST)
Received: by qaa.vinc17.org (Postfix, from userid 1000)
	id 22DB5CA011C; Tue, 21 May 2024 00:26:58 +0200 (CEST)
Date: Tue, 21 May 2024 00:26:58 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: libc-alpha@sourceware.org, Eric Blake <eblake@redhat.com>,
	linux-man@vger.kernel.org
Subject: Re: LINE_MAX
Message-ID: <20240520222658.GG2665@qaa.vinc17.org>
Mail-Followup-To: Vincent Lefevre <vincent@vinc17.net>,
	Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
	Eric Blake <eblake@redhat.com>, linux-man@vger.kernel.org
References: <qjp55g4oisyltajr4hckjgqjfbfwx7w5jwfgpeuqhdghppxrft@khoxlratj7kl>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <qjp55g4oisyltajr4hckjgqjfbfwx7w5jwfgpeuqhdghppxrft@khoxlratj7kl>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+76 (1f3da810) vl-167818 (2024-04-20)

On 2024-05-20 23:49:13 +0200, Alejandro Colomar wrote:
> I think I found a bug in POSIX.1-2017 (and probably, previous ones too,
> but didn't check).

I already reported the issue in 2009 about the example:

> However:
> <https://pubs.opengroup.org/onlinepubs/009695399/functions/fgets.html>:
> The following sections are informative.
> EXAMPLES
> 
>     Reading Input
> 
>     The following example uses fgets() to read each line of input. {LINE_MAX}, which defines the maximum size of the input line, is defined in the <limits.h> header.
> 
>     #include <stdio.h>
>     ...
>     char line[LINE_MAX];
>     ...
>     while (fgets(line, LINE_MAX, fp) != NULL) {
>     ...
>     }
>     ...

See thread "fgets/strtok and LINE_MAX" I started on 2009-09-21
in the Austin Group mailing-list. It is available on gmane:

Path: news.gmane.org!not-for-mail
From: Vincent Lefevre <vincent-opgr-opTGSl+ZDNkdnm+yROfE0A@public.gmane.org>
Newsgroups: gmane.comp.standards.posix.austin.general
Subject: fgets/strtok and LINE_MAX
Date: Mon, 21 Sep 2009 01:03:13 +0200
Lines: 31
Approved: news@gmane.org
Message-ID: <20090920230313.GV657@prunille.vinc17.org>
[...]

There's the issue with the missing "+1", but also whether
LINE_MAX < INT_MAX.

See also
  https://www.austingroupbugs.net/view.php?id=182

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)

