Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 163CF407F8C
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 20:49:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234945AbhILSvJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 14:51:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234680AbhILSvI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Sep 2021 14:51:08 -0400
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69B28C061574
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 11:49:54 -0700 (PDT)
Received: by mail-pg1-x536.google.com with SMTP id g184so7274927pgc.6
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 11:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZJUL9De/Nw6bNMOZGpZ4zTIEIQUTlXtV7voT2X03ybA=;
        b=gzwJ+NW08A74rF91QUjvhFMRWsqgenanxnuOQ3cJWlQhsx1JsJw7HKFudNh6Us9krg
         t7e7vv2dlFP/rA+wJFHMvO/sWcoasgTfmFIObOHreF97mqYcnLGTF9tM3sgl6f7gdAmt
         icKS4vljTpeCCKnj1E12o2uCovWDwC/TYcxNFdSXSBUbVaL7KPDCaH3NIDOkOMSAUDW0
         5N+Qt4Jt+ce94IyryRpAx4AIv6OyJfG5HFo0HLDwix5EDKvfmXO3QqYf9kxWBQBzaJx/
         zPE7N5LhUihCLe7b1baYqtLdmPy0wkT4kRwjFb+J4sYMtAXCZBJ0k1/IXx5cbuITpH8z
         QPjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZJUL9De/Nw6bNMOZGpZ4zTIEIQUTlXtV7voT2X03ybA=;
        b=vI/XYgEZrjzW1QFIeIUAgXCpSiuGOeLV11LtCnkPsxlFNrwVGxUdaCLAKUX0biO+s5
         NUJ5kGyEcQ8/N0FQBLdJzHcgr9SSqMrtF3B8YoHIf1/0HXjXiNU3L+0DyjzvmkF6e/gf
         7V9lHxwqYTYxvplwjxHtmr2X2N/q7x7XECDdEA47oZMQgxzsPOatAkIhUASLqn5s+g+Z
         kXp1zS/dM788SCe6KCo/AsU2H1kFzEzbZ1x29iJ4AcYYp1+A8EljBU17NRxH/BpvudUj
         W0MT8o1VRVEnk4/U6VtOM2iEcB2XJln+98KVXCNTQuJjQBBn7CzXVk5J9MI1aghTAJD6
         IjdQ==
X-Gm-Message-State: AOAM530ChY/QzQlalzvxqAcyec+rjLh8lMQX0ON13SCfJwl9al3Z7wky
        TaU1fKlEqYtpU7q3FdUz5MVt+wa5Ttk=
X-Google-Smtp-Source: ABdhPJw3fbaIubRQbcBjw2k+L9u9pwbs4q1ldAb8vrl7yQiMEYCJxPo4S9SrZFC/pEd32jsBC/mHyQ==
X-Received: by 2002:a63:1861:: with SMTP id 33mr7740984pgy.406.1631472593864;
        Sun, 12 Sep 2021 11:49:53 -0700 (PDT)
Received: from localhost.localdomain ([1.145.22.133])
        by smtp.gmail.com with ESMTPSA id e13sm4484792pfc.137.2021.09.12.11.49.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Sep 2021 11:49:53 -0700 (PDT)
Date:   Mon, 13 Sep 2021 04:49:49 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Thaddeus H. Black" <thb@debian.org>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] Use subsections instead of sections
Message-ID: <20210912184948.2v5v2vumqy4hxap3@localhost.localdomain>
References: <YTluPPbquS6ZHmHL@b-tk.org>
 <20210909072442.423117-4-alx.manpages@gmail.com>
 <YT4MsXe46WlMa8i0@b-tk.org>
 <6ca6520f-ed0e-75b4-7eb2-972a8b8f1dfb@gmail.com>
 <30501890-2a01-3be2-ed51-568a1cd55397@gmail.com>
 <YT4bOyqm87Do3SMG@b-tk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="63wq26nkixyqtvhu"
Content-Disposition: inline
In-Reply-To: <YT4bOyqm87Do3SMG@b-tk.org>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--63wq26nkixyqtvhu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2021-09-12T15:22:35+0000, Thaddeus H. Black wrote:
> On Sun, Sep 12, 2021 at 04:56:21PM +0200, Alejandro Colomar
> (man-pages) wrote:
> > I'm a bit worried that this might be overcomplicating it, and maybe
> > a hypothetical .SSS macro would be useful here (or another
> > solution).  Do you have any thoughts about it?
> >=20
> > That hypothetical macro would behave like .TP + .B + .RS (as shown
> > above; and that .RS would only end at a following .SSS/.SS/.SH)
>=20
> It is not important to me that my .SSS macro be used, but for
> reference here it is:
>=20
> .de1 SSS
> .  if !r SSS_SN_ORIG .nr SSS_SN_ORIG \\n[SN]
> .  nr SN (2 * \\n[SSS_SN_ORIG])
> .  SS \&\\$*
> .  nr SN (\\n[SSS_SN_ORIG])
> ..

Oh, I definitely like this better than my own straw-man proposal.  It's
much cleaner.

I still question the need for this depth of organization in a man page,
but I could see the aboev becoming a nestable `SN` sub*-sectioning macro
much more straightforwardly than a TP/B/RS-based solution.

Of course, this one only indents the section heading itself, not the
paragraphs the follow, so some RS/RE tomfoolery would likely still be
required.

Good to see you, Thaddeus--I definitely remember you from Debian mailing
list days.  :)

Regards,
Branden

--63wq26nkixyqtvhu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmE+S6wACgkQ0Z6cfXEm
bc7Y6A//UCr/pOjI0LeG8a3R0W1TY4bey0kSN1ZfFrUC6E8cE7hKjl52XsN6OuUL
CN2lwg3nSO/WkJWbUQz63AENZLyKDfSR9zplI6ZzQNL8+DaTWHGCbSkfHcs8TZTW
VUKScZ9hLjRrAkO5NUA88J76Q8v2/eRu+FXl3LOS56l28NFGTDfK5uYzJLFrIE2O
T+tYW+V5957NifA3oCO0Wt7YPoGCQ+qkB2SvT19d9EqrYTjzwg0SJi8Hs5KjkRk5
tz27InPUcyKoTO4K7vj1Ct+BRCpYaQy9FH/Kmsc7jZDzXEpCOaZxKDAadUrfClvd
hntsszx2ZoKlXSqRm6qXUUXzVX6678iza7IG4t+9OCmwDju8WCBaGRctQMIZ4D23
73Oj1dyLw7wS3ImBn7oYp/vRlDk8avuoeKTRs7W6TuwDPT68LhxJqtCK6/vSVBjG
NOkSHc5Ik35rhf6YiIbio9FCOx81bVWC9p5DRzXKD4Ct07tqtPSc1aDpQzfKIrA9
SVVyTipegNYd4+DFs33DVEfSiP2dne4m8/O3Qwj7R0S4HsaPJrc6oj+N0JO8ZcPn
Bd5L/qIrRrpyh/5p8wEAdK9N9cCn5qjZLl1/jbsxApDtszYtAFkxp2cjuLnyfN+b
Et9ziJ9lmBzeV+MIRn0B3tuYeP63J73eCF7e1xnrcaTSmc/Bdq4=
=o98g
-----END PGP SIGNATURE-----

--63wq26nkixyqtvhu--
