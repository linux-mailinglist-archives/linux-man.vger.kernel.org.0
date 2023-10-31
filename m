Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE6D37DCCBA
	for <lists+linux-man@lfdr.de>; Tue, 31 Oct 2023 13:14:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230434AbjJaMN0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Oct 2023 08:13:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230497AbjJaMN0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Oct 2023 08:13:26 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9365A2
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 05:13:21 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90456C433C8;
        Tue, 31 Oct 2023 12:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698754401;
        bh=5Eiy6nREqzi+2i8mDlE3A3nOrPbCBUReYViW7jcpByA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MKgwh7KpStwJ1PqdAYYdB+ldW9PmZ3vDpb/gLsH7oY58ljyZQ2Erdx8aIIEeudT2q
         bzUPvDg2qkZIkH5C7DIdXTjrly754/FBuFoZsZwyNmCQZ1RvUtbXg25hNif6E8sbUx
         /1t/giLsT/grlEmsDxGG+9YD7lAK4+W2/2uHNWXm+S3/wFEoVXwQ+3gJhCSkmba3TU
         p5Sg+H6Alil4CEtYF4t/Gm+OwnyZ2nuM8pRAvCn5WIDbdonQRwfqCXW/EPBGgYZrsS
         shd8DPLT0AwMd8kb6MJvlXBu1DAzBC/NozvXt6Ec+bzBdzkjGbg2tiOH1gYZcUuBSE
         9TGvOwxvZILoA==
Date:   Tue, 31 Oct 2023 13:13:12 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Sam James <sam@gentoo.org>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: groff 1.23.0 stability (was: using the TQ macro)
Message-ID: <ZUDvXuA3MVZVSOF7@debian>
References: <20231025141103.savwphtepufpget4@illithid>
 <ZTkvY8egIrf9pcxF@debian>
 <20231028131325.vloorrwewruhy4lq@illithid>
 <87edhbz9jh.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ddNmf8XD0Egt4mPz"
Content-Disposition: inline
In-Reply-To: <87edhbz9jh.fsf@gentoo.org>
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ddNmf8XD0Egt4mPz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 31 Oct 2023 13:13:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: groff 1.23.0 stability (was: using the TQ macro)

Hi Sam!

On Tue, Oct 31, 2023 at 04:38:13AM +0000, Sam James wrote:
> "G. Branden Robinson" <g.branden.robinson@gmail.com> writes:
> > At 2023-10-25T17:08:19+0200, Alejandro Colomar wrote:
> >> BTW, I just checked and Gentoo still doesn't consider 1.23.0 stable
> >> enough <https://packages.gentoo.org/packages/sys-apps/groff>.  :|
> >
>=20
> Alex, this is based on a misunderstanding of how our process works -- ple=
ase
> CC me if you have questions or if something looks off in future, so I
> can explain/help if required.
>=20
> > I don't understand that claim.  1.23.x is as stable as it can be; there
> > have been no point releases.  Its behavior is not changing based on the
> > calendar.
>=20
> The standard rule in Gentoo is 30 days after something has been released
> before it's considered for "stabilisation". We wait longer for critical
> packages like groff to give more time for any reported bugs in "~arch"
> (our testing area, which a lot of users participate in). It is generally
> not a comment on upstream stability at all.

Yep, I understand it's just about your use in combination with other
packages in your distribution.  What I'm not sure is if by default
Gentoo installs the stable packages or the testing ones.  If you install
by default the stable one, I wouldn't want to force a dependency on a
package that you don't yet install by default.

>=20
> > I have to assume that there are either changes since 1.22.4
> > documented in NEWS (and if not, that's probably a bug) that they're
> > concerned about, or they're worried the broader community hasn't gotten
> > enough exposure to it yet.  repology.org has been sitting at 64
> > instances of groff 1.23.0 for weeks now; I think pretty much everyone
> > who's going to adopt it has done so by now.
> >
>=20
> ... in this case, the only blockers were really:
> * me having https://github.com/Perl/perl5/issues/21239
>   in the back of my head (wasn't paying full attention, just knew I had
>   to go back and read any developments/further comments)=20
>=20
> * needing to look into a reported failure
>   (https://bugs.gentoo.org/910226) - which looks like it should be fixed
>   when we update our version of openvswitch (or we backport the patch,
>   or both)

So, if the Linux man-pages forces a dependency of groff-1.23.0, would it
be problematic for Gentoo before you declare it stable, or would it be
fine?

>=20
> > CCing Sam James (the only Gentoo developer I know by name, because he's
> > been active some of the same places I have been) in case he can throw
> > some light on this.
>=20
> Happily! Please feel free to loop me in if you reckon I can give input
> on things.
>=20
> So, all in all, none of this is a reflection on upstream, just a mix
> of: how we do things normally (waiting a bit post-release unless there's
> some serious regression in our stable version), waiting a bit longer
> because it's a critical package (sometimes 60 days, sometimes a bit
> longer), and not getting around to looking at that openvswitch bug yet.

Yeah, the quality of groff-1.23.0 is way better than 1.22.4.  I'm just
worried that forcing distros to use it too early might be detrimental.

Cheers,
Alex

>=20
> I promise I would report any problems if I determined they were in any
> way an upstream issue :)
>=20
> Thanks for reaching out.
>=20
> >
> > Regards,
> > Branden
> >
>=20
> best,
> sam
>=20

--=20
<https://www.alejandro-colomar.es/>

--ddNmf8XD0Egt4mPz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVA71gACgkQnowa+77/
2zK5nw//b6Y41JGG7Dm9Q9uAkkjGqpcCCvHSNrPCfkYHGLql+SWUSLCKJT0LzIpW
7yUs3NXHFa8Oip9Dq32abzL9qlfpPoLumVQe1LV4hGw/6cJJ25oOr6QsECJFMlCy
bFlklYn3byR6EVIVsoBPJMCi9uAlXYhTcDBppaGebR93KzSqa2HhQPt1IC5kC7Bg
p41ZgxtXyoNeevpSNSJu7c+m6/VTfYeCrrjZdxP775wGon3NyTZ/fX6kk1EANnvY
d8EsgaaByIVAXMsH4Tq93+eYjG3ZpBXX+iWpmnQNHKz7ajdUsF81qz9JqyJUVkbR
CicQcSWKyaNZyK0pBWLvx+serqPg7NNHxOj+iBg9Vn+C5rckEJ+GXluprfTEKnDj
BtGhIw0cknOxOfvVsJncxOx2UZEqK9CobQZuLSUAx3KgUCuDSya2dKK/DlhHjs2r
qh4nUd0kwatD+1Bby91azqlGSmDjUTx7Ltz2PGn7VfWXKvaHcepIfrGagOJ8kuYE
NLR2CK39+cj5VG1fyl5ww1z+biBL9ADap0nQkeons6kpX/6VB+gEdLaFcWvlJxdc
1jlvvw4KcJloylLStvDNF1InUGfAAKiCyoJQGfI611Z/YovTRa97Gewm9ctRH/N6
2eCFA1XSwcNOtJIQCKKghN83HkEwgiL7jeu4YjS+wRRzXcihhfw=
=Xn14
-----END PGP SIGNATURE-----

--ddNmf8XD0Egt4mPz--
