Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A42BD7E5A4C
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 16:44:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229742AbjKHPoG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 10:44:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234149AbjKHPoF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 10:44:05 -0500
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06F261FD8
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 07:44:02 -0800 (PST)
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
        by smtp-out2.suse.de (Postfix) with ESMTP id A973F1F8AA;
        Wed,  8 Nov 2023 15:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
        t=1699458240; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=goWxjLqEoCd5IkE4oC3hPxAb/2BMfavf/PLonyEsdXs=;
        b=JpRPeZ/Xobag0VYPy0QWw7hbcBbt3UBNC9BibyHPiAIUTXkb3y52cWYo3SBrQ8fL8aXc7c
        kT3JqmCMass1/zCoSPhMk4qur0KkpJJe0C/3q1AVf8LYg9BX6VMCgfl517SfJ3w+OCsPqt
        zSibwqPJsuNjRXM7QUp0LjRh5STU20I=
Received: from wotan.suse.de (wotan.suse.de [10.160.0.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by relay2.suse.de (Postfix) with ESMTPS id 769D42D397;
        Wed,  8 Nov 2023 15:44:00 +0000 (UTC)
Received: by wotan.suse.de (Postfix, from userid 358)
        id 936206687; Wed,  8 Nov 2023 15:44:00 +0000 (UTC)
Date:   Wed, 8 Nov 2023 15:44:00 +0000
From:   Thorsten Kukuk <kukuk@suse.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        Jonny Grant <jg@jguk.org>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <20231108154400.GA27312@suse.com>
References: <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org>
 <ZUpjI1AHNOMOjdFk@devuan>
 <ZUsoIbhrJar6ojux@dj3ntoo>
 <ZUtaH35V3koxTSL0@debian>
 <20231108095910.GA9216@suse.com>
 <6bcad2492ab843019aa63895beaea2ce@DB6PR04MB3255.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6bcad2492ab843019aa63895beaea2ce@DB6PR04MB3255.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Nov 08, Alejandro Colomar wrote:

> On Wed, Nov 08, 2023 at 09:59:11AM +0000, Thorsten Kukuk wrote:
> > On Wed, Nov 08, Alejandro Colomar wrote:
> > 
> > > strncpy(3) is useful to write to fixed-width buffers like `struct utmp`
> > > and `struct utmpx`.  Is there any other libc API that needs strncpy(3)?
> > > Of those two APIs (utmp and utmpx) and any other that need strncpy(3),
> > > are those deprecated, or is any such API still good for new code?
> > 
> 
> Hi Thorsten!
> 
> > Everything around utmp/utmpx/wtmp/lastlog is deprecated.
> 
> Is this a Linux-specific thing?  Do you know if the BSDs also deprecated
> utmpx?

Beside the design issues of the interface, which are generic, the Y2038
issue is more or less glibc specific and a result of supporting 32bit
and 64bit userland at the same time.
For most other implementations I'm aware of there is no Y2038 problem,
either because they don't support utmp/utmpx/... like musl libc, or they
were able to switch to a 64bit time variable or used that already.
So no need to change anything.
For BSD I don't really know the situation, but as far as I know, they
don't have the problem and thus no need to change anything.

  Thorsten

> Thanks,
> Alex
> 
> > 
> > openSUSE Tumbleweed and MicroOS are no longer using nor supporting them
> > and fresh installations don't have that files anymore.
> > So new code should not use utmp/utmp/wtmp/lastlog anymore. Alternatives
> > are e.g. systemd-logind/wtmpdb/lastlog2.
> 
> -- 
> <https://www.alejandro-colomar.es/>



-- 
Thorsten Kukuk, Distinguished Engineer, Senior Architect, Future Technologies
SUSE Software Solutions Germany GmbH, Frankenstraße 146, 90461 Nuernberg, Germany
Managing Director: Ivo Totev, Andrew McDonald, Werner Knoblich
(HRB 36809, AG Nürnberg)
