Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED5937E52F3
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 10:59:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235509AbjKHJ7R (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 04:59:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229924AbjKHJ7P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 04:59:15 -0500
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 941B61BB
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 01:59:13 -0800 (PST)
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
        by smtp-out2.suse.de (Postfix) with ESMTP id 1F2A41F8AA;
        Wed,  8 Nov 2023 09:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
        t=1699437551; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=xzBIjLzjKxdF78chHzvu9lGsy/QBlbCtYE6EmkyulYo=;
        b=tgmhR327hhXFxuesjqWiwCtpNdOWZ5MFAJrTZA+x1z+4upfBUzhyM26OSD1+p4GqUi8UIq
        Gw/S4q2TXjvUXMK7GnJLJrDB8zcp0cFZUuxR6o4j6qdt62UA3954W4FO9u4aFlS+XDlffS
        0JWHgv6NWyjSkvgnUUvsvvlLQpw5yI4=
Received: from wotan.suse.de (wotan.suse.de [10.160.0.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by relay2.suse.de (Postfix) with ESMTPS id E089D2D374;
        Wed,  8 Nov 2023 09:59:10 +0000 (UTC)
Received: by wotan.suse.de (Postfix, from userid 358)
        id 0B44C66CE; Wed,  8 Nov 2023 09:59:11 +0000 (UTC)
Date:   Wed, 8 Nov 2023 09:59:11 +0000
From:   Thorsten Kukuk <kukuk@suse.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     libc-alpha@sourceware.org, Jonny Grant <jg@jguk.org>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <20231108095910.GA9216@suse.com>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org>
 <ZUpjI1AHNOMOjdFk@devuan>
 <ZUsoIbhrJar6ojux@dj3ntoo>
 <ZUtaH35V3koxTSL0@debian>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZUtaH35V3koxTSL0@debian>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Nov 08, Alejandro Colomar wrote:

> strncpy(3) is useful to write to fixed-width buffers like `struct utmp`
> and `struct utmpx`.  Is there any other libc API that needs strncpy(3)?
> Of those two APIs (utmp and utmpx) and any other that need strncpy(3),
> are those deprecated, or is any such API still good for new code?

Everything around utmp/utmpx/wtmp/lastlog is deprecated.

openSUSE Tumbleweed and MicroOS are no longer using nor supporting them
and fresh installations don't have that files anymore.
So new code should not use utmp/utmp/wtmp/lastlog anymore. Alternatives
are e.g. systemd-logind/wtmpdb/lastlog2.

  Thorsten

-- 
Thorsten Kukuk, Distinguished Engineer, Senior Architect, Future Technologies
SUSE Software Solutions Germany GmbH, Frankenstraße 146, 90461 Nuernberg, Germany
Managing Director: Ivo Totev, Andrew McDonald, Werner Knoblich
(HRB 36809, AG Nürnberg)
