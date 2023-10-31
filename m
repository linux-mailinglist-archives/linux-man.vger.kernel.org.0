Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3FE57DC582
	for <lists+linux-man@lfdr.de>; Tue, 31 Oct 2023 05:43:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236727AbjJaEni (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Oct 2023 00:43:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234735AbjJaEnh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Oct 2023 00:43:37 -0400
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B328C0
        for <linux-man@vger.kernel.org>; Mon, 30 Oct 2023 21:43:34 -0700 (PDT)
References: <20231025141103.savwphtepufpget4@illithid>
 <ZTkvY8egIrf9pcxF@debian> <20231028131325.vloorrwewruhy4lq@illithid>
User-agent: mu4e 1.10.7; emacs 30.0.50
From:   Sam James <sam@gentoo.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Sam James <sam@gentoo.org>
Subject: Re: groff 1.23.0 stability (was: using the TQ macro)
Date:   Tue, 31 Oct 2023 04:38:13 +0000
Organization: Gentoo
In-reply-to: <20231028131325.vloorrwewruhy4lq@illithid>
Message-ID: <87edhbz9jh.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


"G. Branden Robinson" <g.branden.robinson@gmail.com> writes:

> [[PGP Signed Part:Undecided]]
> Hi Alex,
>
> At 2023-10-25T17:08:19+0200, Alejandro Colomar wrote:
>> BTW, I just checked and Gentoo still doesn't consider 1.23.0 stable
>> enough <https://packages.gentoo.org/packages/sys-apps/groff>.  :|
>

Alex, this is based on a misunderstanding of how our process works -- please
CC me if you have questions or if something looks off in future, so I
can explain/help if required.

> I don't understand that claim.  1.23.x is as stable as it can be; there
> have been no point releases.  Its behavior is not changing based on the
> calendar.

The standard rule in Gentoo is 30 days after something has been released
before it's considered for "stabilisation". We wait longer for critical
packages like groff to give more time for any reported bugs in "~arch"
(our testing area, which a lot of users participate in). It is generally
not a comment on upstream stability at all.

> I have to assume that there are either changes since 1.22.4
> documented in NEWS (and if not, that's probably a bug) that they're
> concerned about, or they're worried the broader community hasn't gotten
> enough exposure to it yet.  repology.org has been sitting at 64
> instances of groff 1.23.0 for weeks now; I think pretty much everyone
> who's going to adopt it has done so by now.
>

... in this case, the only blockers were really:
* me having https://github.com/Perl/perl5/issues/21239
  in the back of my head (wasn't paying full attention, just knew I had
  to go back and read any developments/further comments) 

* needing to look into a reported failure
  (https://bugs.gentoo.org/910226) - which looks like it should be fixed
  when we update our version of openvswitch (or we backport the patch,
  or both)

> CCing Sam James (the only Gentoo developer I know by name, because he's
> been active some of the same places I have been) in case he can throw
> some light on this.

Happily! Please feel free to loop me in if you reckon I can give input
on things.

So, all in all, none of this is a reflection on upstream, just a mix
of: how we do things normally (waiting a bit post-release unless there's
some serious regression in our stable version), waiting a bit longer
because it's a critical package (sometimes 60 days, sometimes a bit
longer), and not getting around to looking at that openvswitch bug yet.

I promise I would report any problems if I determined they were in any
way an upstream issue :)

Thanks for reaching out.

>
> Regards,
> Branden
>

best,
sam

