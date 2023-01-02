Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93D3565B5FA
	for <lists+linux-man@lfdr.de>; Mon,  2 Jan 2023 18:36:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232103AbjABRgd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Jan 2023 12:36:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232197AbjABRgd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Jan 2023 12:36:33 -0500
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D05F8FEF
        for <linux-man@vger.kernel.org>; Mon,  2 Jan 2023 09:36:32 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id u204so24928658oib.7
        for <linux-man@vger.kernel.org>; Mon, 02 Jan 2023 09:36:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PAvXYGlCsYmPyOTEWdDeByQhh4ApgBi8HxsaeAUL4Pk=;
        b=hwx/w6pnzInI2GZOAYkfD4RvBEs/oNbRAGSXVfvvC2ng+4eHCrwZ2IgE6fMt8zwTY8
         7bjapVuAf+V6XQM9sb/K6AcADgPaWXPr18QEKZGGiDkkFsvEEWo0dSVvigLenWlFTr0m
         sMkeI9ZvSEAdEERiYFO5r9vemBLjiHRK89YY5RzlCsDFP4eOmz8NFij3hZ8QxGrXFrpF
         BV0B7NSeMJLUcTIz6onSUDNfZBvJ9XJDcokSFpgLAEyrUVqIiS3ZdAiWT17k+DZK0LFZ
         i8fdqA+Y5AMYpmhR4aa2bCO05uske9Mtf+GHmzAThkGQyI/3IzVZyS/FibMuJStGBN2v
         nYUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PAvXYGlCsYmPyOTEWdDeByQhh4ApgBi8HxsaeAUL4Pk=;
        b=duvyICcl0vu/mRrKdaKhRBD7+mWRUcGzylUqG9ZbB4i+/9UjS4V8lVYenM6PKrNqWe
         cB3of/3OwdKDRxNS5HrXBvMCW0MVh0EcBMmxS2Vyo4cLhFE0uDz6baQhT4Eb0fC4lJx1
         5JdtD4UEF9p1TNTH4c4RlQxuFWrd55KezUmGHx386HB+OPac6rkmK8SvWwoKU49f6MQ2
         MY/Gsjqhi5+mv6kxi+q/UcDARBXWqfD1QKFrSrW1+k/4iJ9gwjYhaqqo056TEgN6/ECQ
         w28EzdFvJh0naw4zJVlCmioVfNmJDm5XZFVTOSCkbToDzcneip2Qi8n59beeGOTGzuCG
         oSnQ==
X-Gm-Message-State: AFqh2kovNgzWxrseNmuBx1H5H9ZlT+3nnhkVWS8GIQarLPhViw8O8RVe
        36rRxv1epSP2ODNC8LV6uEWYZ19YntohDA==
X-Google-Smtp-Source: AMrXdXs8rGuI2O3SAnAIzGEAttlrrajVBznyj704jZ7xUoNYs/vF02xTOxgzG9kA+go1V4peI8msfA==
X-Received: by 2002:a05:6808:639a:b0:35a:38f8:e456 with SMTP id ec26-20020a056808639a00b0035a38f8e456mr14397294oib.48.1672680991832;
        Mon, 02 Jan 2023 09:36:31 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id j2-20020a9d7d82000000b0066c34486aa7sm13773231otn.73.2023.01.02.09.36.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 09:36:31 -0800 (PST)
Date:   Mon, 2 Jan 2023 11:36:30 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 2/4] ldconfig.8: Revise and update.
Message-ID: <20230102173630.wgtjk4dog2xbf674@illithid>
References: <20230102142349.scfw6dopifjysqug@illithid>
 <ea39affd-fdb3-e832-0b8d-f8243174a599@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="my25hycueou26hyi"
Content-Disposition: inline
In-Reply-To: <ea39affd-fdb3-e832-0b8d-f8243174a599@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--my25hycueou26hyi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-02T16:15:20+0100, Alejandro Colomar wrote:
> On 1/2/23 15:23, G. Branden Robinson wrote:
> > Style:
> > * Set `TH` page title in lowercase, since the migration is underway.
>=20
> More than underway.  I already "finished" it; or at least I thought I
> had.  I already found a few cases where it didn't work (open.2).  My
> sed expressions didn't have enough mana...

Next time you can get their mojo workin'.

> > * Say "symbolic link" instead of "symlink".  (Should we add this to
> >   the man-pages(7) usage table?)
>=20
> Probably.

Okay, I'll take a note for that.  And possibly not forget.

> > * Use `P` macro instead of `PP` (my preference; it's shorter).
>=20
> This one I would either do it for all pages at once, or not do it.  I
> don't have any preference, so if you send a script (a patch would be
> several MB long, I guess), I can apply it.  I guess I can't stop in on
> the grounds of churn, considering that I've had my fair amount of it.

I'll back this one out.

> > * Use AT&T troff-compatible right-arrow special characters.
>=20
> These things, I'd also like if the fix was applied globally.

Okay.  I'll back that one out and take another note.

> Let's see where I can start with this bone.  How about breaking it
> into 3: one for markup, one for style, and one for contents, in that
> order.

Will do.

I'll try to remember the SOB for v2, too.

Regards,
Branden

--my25hycueou26hyi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOzFhUACgkQ0Z6cfXEm
bc7DcA/+P4AbavKvSKSMwvLT56BKdzf/9BrGUzx3PXl7yOcoz+BEmCgEGyBW7mma
vXPAFwRqyq5V+mhosUJqi5JEB31GI8jzWi+L11H/N+cJ4VVDfiO4HtE52WUCWcPR
3M87aw4vsHmPzSfF1psEzeUwUU1/R7l3XLdqqsCyXu4/S2CcyG0SBYWyNc1yswX6
9yVl5YTRh+nT5BOpEi1gQm9fIofiFBWmR783kyEK5mbaLoNdhMjpvZ8ln3v3/y7L
brT3oc+wvVwLqR/lClSqMTgvvDMg9BQ142HkEcYaioICDi9gxw1uuEf3kQkSTUYC
yBiYTrMbyrbQYfoKp12mKbtHIKA7Qgd9Ev026f8qnJxshj7WwK4wO9N1szizWMzY
dyxOVyjVVaCs3p0aoky3wuciCd9CdOLXPKVRh1MpJUni8ly2sMLdROExwRQcuwic
bFiJop5xSwUfbXiVlOh2C4pYZUbm9ZP6oap/+MJDqLjNTcpMsEH52papAo9GgCd4
p9EnkTp5M6bsm2kWPsp0UeJyYcuj0A4Tvx4fb/dZ8YTrpyYM9ZixTTwU3wwGuCuo
C5Tvj9tkRT5YcIyjlJBBzEyd7wn5vsoXdZoLGm6OiYSsfyv6TWFtYSXKDoSrUwMR
ROLpYaYvqzFvmQkMrnJC/gQ2Zm0bfHfH1gIB41vQBrMCx6R8HmM=
=6GI/
-----END PGP SIGNATURE-----

--my25hycueou26hyi--
