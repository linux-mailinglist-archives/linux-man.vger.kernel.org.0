Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F4C66DA7A1
	for <lists+linux-man@lfdr.de>; Fri,  7 Apr 2023 04:18:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240437AbjDGCS3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 Apr 2023 22:18:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240434AbjDGCS2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 Apr 2023 22:18:28 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DAB310F4
        for <linux-man@vger.kernel.org>; Thu,  6 Apr 2023 19:18:25 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id f14so16796412oiw.10
        for <linux-man@vger.kernel.org>; Thu, 06 Apr 2023 19:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680833904; x=1683425904;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tD1JJ32ba24jpMq98ALdClFnjhTKDeZLi9ERl/CySqI=;
        b=YmlEb4CvxUgWbaFZr7sDGHij48M8c7fuK9T96GqQ+NCdbBTfqul3mgjebOdWXBKUue
         LjKRE9GEGWI5cAyjnnb9DVNPlIlEL+3DEK9YIfbGPIrEwy7bWr2+AIypDpLabP78F22b
         dIDXxiX0wDbeGJPHFcPGBh2tWl6A00XaZg4v0KE+msMysNB4JRzZPaGO7TrSiKY1blKp
         IA1KHgJHadTXAiGWm7XtHm6iDiqZz9zGUI+rEIA3EiwGRdQpKsnTi/aceQkTzHEm1dDw
         gVYbDMp5Y4ke0MyzLvfkQt4gzJadBTI+PWCAIB3jP6U4zYJiwOkQugib7oBUuqybib2v
         0NOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680833904; x=1683425904;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tD1JJ32ba24jpMq98ALdClFnjhTKDeZLi9ERl/CySqI=;
        b=WqggE8kTEn5uk7+RhjA1/apCw8wXY5ST4YkOW/NSr10ONK7wSpHRLfEIhdXkIU9mML
         0MwH+SF0m8D+6l930HvpZ940LhdhxZIMWQUuGHGXKjqi7sEIuUZ2WYbLK6UYwSRzvPVf
         8k7EPOb1wsH9Xe9at/2IZieV6Y9JB6c08Yg3lmifLYltiD0LeW3xvoDI3U+asLy+QIIB
         +DBOPs+XzjQlaGEuOdFyEPV4SV1B6/YM3hptcqQ3UhUr+ZamCqqCUlstnU9eIgZqagQ+
         oUchyJrciV/PtfB7NlByWQz8Wluqefx1UNTAi5eA8PviFuYQXFhkRHvrjkElvs4DiHkj
         mNog==
X-Gm-Message-State: AAQBX9c/ceWq/eFdJuqap/STlFDpzAg5SvdPQXNlYpPObzyPXCOIzrYt
        6CWW8oDWtf9p1aWkMc52Jctjmg57AuoJPw==
X-Google-Smtp-Source: AKy350btsoH1GyET9OnTwCQN4/mTxVI0RkfhgioZZ4sjxy2qGYIpGIHt+8olA+zasUwkye86pIhsyQ==
X-Received: by 2002:a05:6808:a9a:b0:387:38d5:133 with SMTP id q26-20020a0568080a9a00b0038738d50133mr349235oij.50.1680833904609;
        Thu, 06 Apr 2023 19:18:24 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id q7-20020acaf207000000b0037d7f4eb7e8sm1320693oih.31.2023.04.06.19.18.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 19:18:24 -0700 (PDT)
Date:   Thu, 6 Apr 2023 21:18:22 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Eli Zaretskii <eliz@gnu.org>, dirk@gouders.net,
        linux-man@vger.kernel.org, help-texinfo@gnu.org
Subject: Re: Playground pager lsp(1)
Message-ID: <20230407021822.3grfnenicwjhdive@illithid>
References: <ghileoo9dk.fsf@gouders.net>
 <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ohs7fru2wgqjyejq"
Content-Disposition: inline
In-Reply-To: <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ohs7fru2wgqjyejq
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2023-04-06T03:10:59+0200, Alejandro Colomar wrote:
> Hmm, now that I think, it's probably an issue of coordinating man(1)
> and less(1).  I sometimes wish that when I resize a window where I'm
> reading a man page, it would reformat the page from source.

Seems like it shouldn't be impossible to me, but what I imagine would
require a little re=EBngineering of man(1), perhaps to spawn a little
custom program to manage zcat/nroff pipeline it constructs.  This little
program's sole job could be to be aware of this pipeline and listen for
SIGWINCH; if it happens, kill the rest of the pipeline and re=EBxecute it.

Maybe I thought of it this way because (I suspect) it aligns with my
vision I've expressed elsewhere of man(1) having unfortunately
aggregated two separate functions: librarian vs. renderer.
Historically, of course the latter function was almost vestigial, since
early Unix systems had no pager program and their man pages required
little to no preprocessing; man(1) slowly accreted into a larger thing.

> Of course, that might be a problem for keeping track of where I was,
> since lines moved around.

That seems like a harder problem to me.  You'd need a way for the pager
to communicate position information back to the mini-man renderer
program I envision.  Two challenges here: (1) what part of the screen
was the reader actually looking at?  (2) how is the pager supposed to
know how to map any given location on the screen back to a place in the
unrendered source document so it can be accurately found when the
document is rerendered?  These feel nearly intractable to me.  But maybe
I have a poor imagination.

> Ahh, yes, this is true.  What I found missing is a kind of a map for
> knowing what I have available for navigating (also the fact that I
> don't usually run info(1) makes me be a bit fuzzy on detailing what
> is it that I miss from it).  So, info(1) has a map of the sections
> available in a page, and does it also have a map of all the pages
> in the system (or whatever you call your pages, I don't yet really
> understand the organization of info manuals).

The "install-info" program is run by packages that install info
documents to the system.  This creates or updates a file called "dir".

For instance, when I "make install" an everyday groff build, the
following shows up.

/home/branden/groff/share/info/dir
/home/branden/groff/share/info/groff.info
/home/branden/groff/share/info/groff.info-1
/home/branden/groff/share/info/groff.info-2
/home/branden/groff/share/info/groff.info-3

Since help-texinfo is on the distribution list of this mail, I'll take
this opportunity to note something from groff's INSTALL.extra file,
explaining how to uninstall the package.

  ... Run the command 'sudo make uninstall'.  (If you successfully used
  'make install', simply run 'make uninstall'.)  At a minimum, some
  directories not particular to groff, like 'bin' and (depending on
  configuration) an X11 'app-defaults' directory will remain, as will
  one plain file called 'dir', created by GNU Texinfo's 'install-info'
  command.  (As of this writing, 'install-info' offers no provision for
  removing an effectively empty 'dir' file, and groff does not attempt
  to parse this file to determine whether it can be safely removed.)
  All other groff artifacts will be deleted from the installation
  hierarchy.

Any chance 'install-info' could get savvy as noted above?  (Maybe it
already has--I'm running 6.7.0.)

Regards,
Branden

--ohs7fru2wgqjyejq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmQvfWcACgkQ0Z6cfXEm
bc7lfw//cNQTff0JM6bIwd7mgsBHZ+BAMgxsnMPRnITAkxU9OUyGTrO58Dcdn9Kn
LSRuL/nxFBHnzzrXLJFhPT1h32KYJ0sEx8GZdyYnq65S4g7pY6mz8KHfIK+kuTkg
HiijnAUPHZOJjlfha+TKMLj0iOUzpiIuKyWBGHfq4I+d0OgRxFegkKAP2gd36R5P
3JPzZxj3CzaC+AZbugbrHO/zO8u481Pd6XfRoyYppRpiSQLZux7AbTYx88VsNvjo
1MoUIqeTnyeikzRTi1HtadNUHMCC9f3wUCgj/gRR58HKvf18AmN9T8MKfYhSRubl
pt54FUIxlQCtuRHvwrWzBuN09AAsaUyYKZS6oDknK23aVd7JL4DtfP23kxnwqAHm
q90QcrvxVMI5llhzPxltiuuwxc1BJUjq31oUbxVS3tIIvECc1l0hGiU2wFGVc3aG
j7dlGQX6lhPMDCZ9vIlgxYvbpXprDQeiG6ztahvaaa/mbasKKl8cr0yxiEm9UzKg
zXPDHwvsMC43v8sUNpGEzbbLUgHsHY1fcfc0Z4BO1Wxz3XmZ4mqWUo0dw0Jc/2R4
sH+C8ey1R/HRdRXo3zBVQIyg0IqGNlkcu9vXGvtQEhffj8Nr+kQ4M/aA++Hqd9TQ
g3vfy9hlXcNz9Kuz7hvbBDLVP+o/keDZrSTA7ZxxwIClkdXjySA=
=thDq
-----END PGP SIGNATURE-----

--ohs7fru2wgqjyejq--
