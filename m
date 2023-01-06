Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC62A65F811
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 01:19:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232331AbjAFATe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 19:19:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236109AbjAFATc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 19:19:32 -0500
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 400683D5D4
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 16:19:32 -0800 (PST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-15085b8a2f7so254552fac.2
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 16:19:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5rQFvAess7nbnOHdbVBzYpDYqEQQDyqN8YoAK8Xl6cI=;
        b=n6H0KQyaytbGbPFVCG+TTB+Jkq14y43FmoRGo6Nh89sZ3N+HpIrDY7BgolhB/4PYLm
         5KiZ5Bga9U+t4Ac+V8up9FZghfdhCixys1BdaDr8CRDxSuAL0jxNosmr2FWY8sX+Vu5y
         6tCjrG+uypYMlZcPwHK2HyYInm52tarD+6AdQQCbt85X/lKLNnew5IR/Cv9kFWB+9tMQ
         y+VQokFKkXmzqZu3bs/wIskDHTZ9wa60GFq7aFa+cQIZhIfk2RkkiTBBuVkghx2ruiPJ
         CEnnHFMx9ZiIaO3yq1gBdl5c0h3xsNHcO1snmN6ONgW6c/Gval8KIwIJjz53CFFMxbZ8
         dE+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5rQFvAess7nbnOHdbVBzYpDYqEQQDyqN8YoAK8Xl6cI=;
        b=JG1AHU/FhZqJsWY69laNRoNBPUKyT33nEACNGociP/yYWUEscvHF9suhwlQZrYpOPI
         ZOQ2wJlKwYW5kfaDFLI9NC+hgMro9mtkGGb93LKMSEwbsJT7o4lnLrGNI++7tFOShnBM
         q+Iyt9iqyu6rFnOx7FMbETDJzqjziCG+m4eyQDyGsgHFfdArJ2bSNZcf6b8N4Fbzv6pp
         y/83mSAYV6H7uf7dlqP7q9i4T52jjkKvWWZp3eJDhs223qNfsUZdfZqAmkjRS811aoZH
         WZDGVg/CV4HEg4cJD+We/ANtYQg8iOGPbuNCb0gSyeal5ocUgGx0nD7KF+0fzz+0pkLJ
         1kRw==
X-Gm-Message-State: AFqh2krjFINSEIO6ZY69iHdXnqepGMoiz4dwbzdjgeZ5r7WVz0QXpN7U
        CiMq3EqdGnpdCt94qGVs0PHTTs1jXzk=
X-Google-Smtp-Source: AMrXdXve1P+RemLKBiEb7OruZPO+//+BA/pCMWc6o9bv1V/B0yvtwysmBNVGTuAxOkC1eoHuJQdOrA==
X-Received: by 2002:a05:6870:75ca:b0:148:3d33:493c with SMTP id de10-20020a05687075ca00b001483d33493cmr31216527oab.6.1672964371546;
        Thu, 05 Jan 2023 16:19:31 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id o12-20020a4ad48c000000b004d54ff4de54sm11656386oos.2.2023.01.05.16.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 16:19:31 -0800 (PST)
Date:   Thu, 5 Jan 2023 18:19:29 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v3 10/13] intro.3: srcfix
Message-ID: <20230106001929.n62apcljbzg4j2vu@illithid>
References: <20230105225328.tutvqrvewd6knewc@illithid>
 <7cac58e5-19bf-de63-7bc7-2ef22ee6f6f9@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="b4pca6rwv3lpjdxd"
Content-Disposition: inline
In-Reply-To: <7cac58e5-19bf-de63-7bc7-2ef22ee6f6f9@gmail.com>
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--b4pca6rwv3lpjdxd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-06T00:55:41+0100, Alejandro Colomar wrote:
> On 1/5/23 23:53, G. Branden Robinson wrote:
> > * Break input lines at phrase boundaries more often.
> > * Break input lines after commas.
> > * Set multi-word parentheticals on their own input lines.
> > * Protect man page cross reference from hyphenation.  (This will not
> >   be necessary upon migration to groff 1.23's `MR` macro.)
>=20
> I plan to migrate as soon as it is in Debian, so maybe it's not worth
> doing that.

I regard hyphenation suppression as correct (and harmless) practice with
font macros; do you want that change backed out?

Regards,
Branden

--b4pca6rwv3lpjdxd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3aREACgkQ0Z6cfXEm
bc74VhAAp8GeSdFxkRY74gqeveryxD8LecXA9nPVdj/CqVOjkndao4Q5eZBcTIcn
6rUAT/vQI0uShp0la2OLl+uf8EHXeneQMtpi5Of8Q1WponRU6WXM7gef1rPCx7SG
3geVvEyq8KSRMElt11q9Bo7ouLiHbQiTLHwcwnGwH/3ScvHf6taffOYyf0q7xxFP
Ix55rzlGeczlzSM4ZRXzbhDMwP/TIiZdqYjPAc0hygEYM4zp7SLZ0CdhyGkRJmBX
SZC9qs+D9jbKONlpA24WGtiy+wlbWJb4vqBeg9gsK7zoZf4RY6jI/uqrc0cwzFPX
hav9Ta/eDt6oobLxpkOqVRJNd4mtElL2OLndxRYqTf5i5fUXYlTODOG1VaBF4XTW
s2hrzco49J/R8YiWWn6dQU7euluHQzY6lgcimrmhUMZ9jebVcn1iqmDFiF4TUByK
E98ckWOTzow7M0OEVpiicfFz2NwOVIKIoEYWkh8gexfTXcRqNdp1ZmFjUI2Qz2Ax
isMEEJeoUmNIzWB8ZGfmb4i98QmuHHHVkN9kPh8iSR2BTmQxwuLhJ9EU1w4yThrg
wQeNDtaBZjoFi3IVXlFZaaP1CcsfpYV6H3KuTsUo6VzNmh1O6NYmqhPrlQxDhdzU
qkQgkntIAb8qNMBkdiL36CFUveA+qWiTmcaUZtUc+LhU+e8TlLg=
=myPy
-----END PGP SIGNATURE-----

--b4pca6rwv3lpjdxd--
