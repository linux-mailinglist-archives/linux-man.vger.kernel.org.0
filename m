Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E2D17B4745
	for <lists+linux-man@lfdr.de>; Sun,  1 Oct 2023 14:02:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234873AbjJAMCs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Oct 2023 08:02:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232837AbjJAMCs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Oct 2023 08:02:48 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A1DDD3
        for <linux-man@vger.kernel.org>; Sun,  1 Oct 2023 05:02:46 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64CFEC433C7;
        Sun,  1 Oct 2023 12:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696161765;
        bh=/M1TlGU9S9SVjJ+Gns7j7/qEwSwnt9BA/9VTaxbEOoY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=KSCmmERLVs214Do9cF5gNL74HpF8f3nAa8txFE7WmLln4Vb5BlJh1fEOE5WO/9miM
         Xt3eN9WaKGTJMkZEsF9gH0m125NM0+Idgi2AXQesj7pJOK9SvNW9i0xkTgA9qm8i/d
         Ti6jopDXOv86b4ecSpmq13q1DHUFWEhwAMjLMt6CVN56Qpo2+stSepHJywXfP2KnSS
         1LBFjIcCDyNsA8xccPo4m6WKsuutTJxDuT9c5XCKxlAxaFwWYKlPo+iGAoWumLIzIu
         Yu6cFl/jQdhY0GxDmyFjA6yzllc50Efeei6ZPPueumH0O/dXimjsKy96/8BjCZvX2b
         xHOjpOf8HcZuA==
Date:   Sun, 1 Oct 2023 14:02:42 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org,
        Brian.Inglis@shaw.ca, groff@gnu.org
Subject: Re: groff features for hyperlinked man pages (was: No 6.05/.01 pdf
 book available)
Message-ID: <v7xmrwk3mfapkskuaci5hg3kbftmyvvhjsel2dnajgornznzdn@6baw6cedi6yv>
References: <20230815005022.47vpqsjoczn4vyii@illithid>
 <64e14441-c527-8fbe-c9d0-023dda5bde38@kernel.org>
 <20230819043732.6y5c5bazjskdia7m@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="sexg22ccqfr3mtcb"
Content-Disposition: inline
In-Reply-To: <20230819043732.6y5c5bazjskdia7m@illithid>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--sexg22ccqfr3mtcb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: groff features for hyperlinked man pages (was: No 6.05/.01 pdf
 book available)
MIME-Version: 1.0

Hi Branden,

Sorry for the delay.  I've been learning neomutt(1) and mbsync(1)
recently, which took a lot of time from me.  Now it all stabilized.
Finally, I'm able to grep(1) my mail.  :)

On Fri, Aug 18, 2023 at 11:37:32PM -0500, G. Branden Robinson wrote:
> > I'd expect that the hyperlinking ability should be modifyable with
> > groff(1) --I don't care at what level of the pipeline--, similar to
> > how it was modifiable with man2html(1).  But the source code shouldn't
> > know about it.
>=20
> Please point me to which man2html(1) implementation you mean.[3]  I can
> have a look and evaluate.

The only one I've used is Debian's, which probably was aeb's.

Cheers,
Alex

--sexg22ccqfr3mtcb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUZX9sACgkQnowa+77/
2zIvghAAhxgdY3/czEMcPTM774882LYwYuBWCz4yCPy3ojitVfvhi0Vk2H1kfGvs
gD3M8M+D4UO3WC3mXF8jmy2XiVK+yGY6PA7DZ5EzvIy880dg3CSODv+p5x/nS3z9
TD9FArYBq2tLm6bJmhNBmlFKNtjhgRavWdLd1eq6qms6BQWA1eJHYAXuU3shD2tT
yEugIbaDLvVVSFCVOS4tCE0048mgOm5WJuThfdq7zypBgmnJfhZwQxPAnnHLa5Wa
NKQ1sWNYYMN/Xny7F+Wzwv9b8KG1CkCBGapOvmtwVmBWlcDCiRlrkDinOTeOHvWL
PSMwePwLtEbzVYkY2EW0CvqVlTiAMBaMaOof9hpxmUUmclyzf/G2E41N6/Q0a0mC
gbNVlxbKVZWIq4feMcTDkx+aS2uet7eyEHFvPrfT2VHGbcVu1arEB8j+rEkpXppj
TfzIBhIlNn2MwfhqzAPJ0mTslSjgaynVo1ql9XoKofcR/+LND/DqSRXSK5FCwwa/
nJ6IDXJ24BUyvujyvI9WpIbFkhP3qCVmMdTRmDT72szEs/sRcoiOO+KVluN35xz5
sNKB3OVvQJo9iTUMgfjacglLmupW5g6Pa+YKP1VYN6BC5vFhzSsB/NpgC7eh5F0p
Uhr1vuthNsp6ABu2myfzNW0l1FC5dmh3y9P8XrqdwO3QYw2j5m4=
=CHHM
-----END PGP SIGNATURE-----

--sexg22ccqfr3mtcb--
