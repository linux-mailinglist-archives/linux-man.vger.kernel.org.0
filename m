Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 243D63006CF
	for <lists+linux-man@lfdr.de>; Fri, 22 Jan 2021 16:13:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728861AbhAVPNE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jan 2021 10:13:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729088AbhAVPM5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jan 2021 10:12:57 -0500
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00253C061786
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 07:12:11 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id r4so3309028pls.11
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 07:12:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SjDTD8uRWLXbB2VryuX2TeDgc0qRxZq/quLNEBHhcMY=;
        b=il8k99P6wnEMdrbLvueRrv8CbPr0p6AXnVg5orECioq6jppBt1KQKI0dKjJW8/KM8S
         zXkJ3Ky3v74o08jQ5cy02tgCHjIPitS/hXLfyT6iAmVIIGSPaYrBPs+78CIGt1Y29/i+
         CjQ1p4ELpf/abbiziMdUHaMwBSqKm0ynKNt+STxhJumYDSU/yxKIxx07GUTBgWomk/QI
         pqlTkmE18yvNTcUSMwRhOch2vPj1ZtL1xFKeeRvrR0EMB3fBpyGaqkwR6Ro7tszybj9D
         xn6sCEMQgFT9txgZvw1NjX+eOgVocDvLtV0ZV6fzLK0++4IzhpgbTsmXPzSN7HikAZV1
         fl8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SjDTD8uRWLXbB2VryuX2TeDgc0qRxZq/quLNEBHhcMY=;
        b=U/ji9XFA6GAhiibp4eQWDBMxc7XIYyvbG6oPtrh+9TInYHWUPzLCwunuILXGEUCHpA
         VcwZ3Id0dSdXHLEY36UvJUVfMxQTQGBrpjoEErfhdnZVgtYhItHL2l/+Pwp/WMsr+XC8
         H68LIEQZ1duQwm4nMocZgLhDTkbpaxsqbC1shlBySL6jPCVBIjkSNhwni7EqGzA8Rcg1
         +l2Gi9kfWm1bkrHSfzmSohuznNDc2/+KzWW56eOoFKFQOmNaBVd8G2VKMH7OI5sontyI
         j5NXT3RdiC98WfnIhSGYVEOxBgb2C8k+U7SGKFMQh1uge2OMfKwnfptbjkx+hznW8SDk
         FJfA==
X-Gm-Message-State: AOAM533vxlZdbZNyhmMuVdQ4xEm2G4Z5wjeXIPHT/lESj6jj27Tsa0U9
        FVYY/rGIzWesB0ezbLIiBIU=
X-Google-Smtp-Source: ABdhPJysfESHMPtrqvVDvaP+I9Y78cAinBjBiZQpyne6MNWvHlfba2uZTKpxMWVCSmTNE/u0IWnANA==
X-Received: by 2002:a17:90a:520e:: with SMTP id v14mr5946443pjh.233.1611328331529;
        Fri, 22 Jan 2021 07:12:11 -0800 (PST)
Received: from localhost.localdomain ([1.144.183.221])
        by smtp.gmail.com with ESMTPSA id m4sm9011658pfa.53.2021.01.22.07.12.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Jan 2021 07:12:10 -0800 (PST)
Date:   Sat, 23 Jan 2021 02:12:06 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: Correctly formatting URIs: slash
Message-ID: <20210122151204.tf7ygq324cf4zwjq@localhost.localdomain>
References: <dd390b94-1733-eca1-4a59-d16988881f9e@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="f2ehixqlbsux7d2w"
Content-Disposition: inline
In-Reply-To: <dd390b94-1733-eca1-4a59-d16988881f9e@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--f2ehixqlbsux7d2w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex!

At 2021-01-22T14:00:33+0100, Alejandro Colomar (man-pages) wrote:
> Why do some pages use \:/ for the slash in the path part of a URL, but
> some others don't, and just use /?

Laziness or ignorance of how URLs get typeset and what the \: escape is
for.

URLs are typeset with hyphenation disabled.  That means that the line
preceding a URL can
be broken early in a very ugly way, somewhat like this sentence.

Slashes in URLs turn out to be pretty good places to break a line if it
must be.  If you wanted a hyphen to appear at the break point, you'd use
the "hyphenation character", an escape that goes way back to 1970s AT&T
troff: \%.  However, as with URLs,sometimes you want a hyphenless break
point, and that's what groff's \: is.  Heirloom Doctools troff supports
\: as well.  mandoc 1.14.1 does not (it refuses to break URLs at all, at
least for man(7) documents; I didn't check its mdoc(7) support).

> Moreover, why do the former use \:/ only for the path, but not for the
> protocol?

I think it is because people feel like postponing a break by 7 more
characters to get the first part after the schema adjacent to it is not
too high a price to pay.

There's no deep reason why you couldn't do:

.UR http\:://www\:.w3\:.org\:/CGI
Common Gateway Interface
.UE

for instance.

House style for the groff man pages is to place hyphenless break points
_before_ periods and _after_ slashes in pathnames and URLs.  The former
point is one I'd recommend firmly to others, because it helps keep the
reader from confusing a line-broken pathname or URL as ending a
sentence (prematurely).  The latter convention is more arbitrary; plenty
of perfectly valid URLs (and pathnames) exist with or without trailing
slashes, so one can't infer the end of such an object from the presence
or absence of a slash at the end of a line of text.

Regards,
Branden

--f2ehixqlbsux7d2w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmAK6zgACgkQ0Z6cfXEm
bc5ACw/+O+d+MSXqY/88X+yUsTRyYKj0sDbFfF1QpP+B/mqMr9NTO1iv07P71DAM
La9Dd6i06Q7k1zQqiGBX+pbODoWXr/K/SCEh4+LCJjE+3E5y5OGRVuLJZ6xgxiHK
Mbu/I7kvfMrtkk9BwXr1gyxua0rJlcJSaKdfxkrW7+/kz/9T2AwaEEPCHdIhKNDR
a4jRJVz0NqlkdssuA3H4mmwfAG4zNWb7IvU1yLU2sUIv6YeYruMgR97evMHgYB50
0jddK6Ql+59UJSRsnKDRpzgajpqVxRyb0nXCk1gUpyQl07V+JjODKLbGcAtSfRsO
iih376JGpM/cOGY8iWFaSxkKp4pamVrB482ZQZLnSDb8w+07Rw4ZseXaXZba2NFA
wdtsEVfylHdK7/aUZxlYx4pUxt7B4Mfc6N6HkF1TGK+VWoRcZ1K1fNSWjpUX1jpb
iwhTzqTKM05y9XcXla1GNTPMZNiyADzbehV4Y4z55sp4sVxaufT6JT39zm6iGc5T
7+9dJwIJY+cPG0MmcRnfUjrd1Kr4f4BSyk0wry14iEJxJtujkqxiurXUFstuHeEb
LzJQ+MJTp28woV9/eQcpwwqXivGQC9Dl55/ecFvH+mlFTOvAuLSWjnYTfYJtbt4k
wpcjQ85TprTqv1OSsgowqVqpO3mbA+3pp1w9qS0gNvJvf2ssSrk=
=jO2a
-----END PGP SIGNATURE-----

--f2ehixqlbsux7d2w--
