Return-Path: <linux-man+bounces-72-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A9F7EA72E
	for <lists+linux-man@lfdr.de>; Tue, 14 Nov 2023 00:49:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 127451F23553
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 23:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A6793D988;
	Mon, 13 Nov 2023 23:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCA63E469
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 23:49:32 +0000 (UTC)
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 508A68F
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 15:49:29 -0800 (PST)
References: <20231025141103.savwphtepufpget4@illithid>
 <ZTkvY8egIrf9pcxF@debian> <20231028131325.vloorrwewruhy4lq@illithid>
 <87edhbz9jh.fsf@gentoo.org> <ZUDvXuA3MVZVSOF7@debian>
User-agent: mu4e 1.10.8; emacs 30.0.50
From: Sam James <sam@gentoo.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Sam James <sam@gentoo.org>, "G. Branden Robinson"
 <g.branden.robinson@gmail.com>, linux-man@vger.kernel.org
Subject: Re: groff 1.23.0 stability (was: using the TQ macro)
Date: Mon, 13 Nov 2023 23:48:29 +0000
Organization: Gentoo
In-reply-to: <ZUDvXuA3MVZVSOF7@debian>
Message-ID: <87wmulnri2.fsf@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


Alejandro Colomar <alx@kernel.org> writes:

> [[PGP Signed Part:Undecided]]
> Hi Sam!
>
> On Tue, Oct 31, 2023 at 04:38:13AM +0000, Sam James wrote:
>> "G. Branden Robinson" <g.branden.robinson@gmail.com> writes:
>> > At 2023-10-25T17:08:19+0200, Alejandro Colomar wrote:
>> >> BTW, I just checked and Gentoo still doesn't consider 1.23.0 stable
>> >> enough <https://packages.gentoo.org/packages/sys-apps/groff>.  :|
>> >
>> 
>> Alex, this is based on a misunderstanding of how our process works -- please
>> CC me if you have questions or if something looks off in future, so I
>> can explain/help if required.
>> 
>> > I don't understand that claim.  1.23.x is as stable as it can be; there
>> > have been no point releases.  Its behavior is not changing based on the
>> > calendar.
>> 
>> The standard rule in Gentoo is 30 days after something has been released
>> before it's considered for "stabilisation". We wait longer for critical
>> packages like groff to give more time for any reported bugs in "~arch"
>> (our testing area, which a lot of users participate in). It is generally
>> not a comment on upstream stability at all.
>
> Yep, I understand it's just about your use in combination with other
> packages in your distribution.  What I'm not sure is if by default
> Gentoo installs the stable packages or the testing ones.  If you install
> by default the stable one, I wouldn't want to force a dependency on a
> package that you don't yet install by default.

That's no problem - we regularly have things which require a new
dependency to become stable and it's a nudge if it hasn't happened anyway.

(See below).

>
>> 
>> > I have to assume that there are either changes since 1.22.4
>> > documented in NEWS (and if not, that's probably a bug) that they're
>> > concerned about, or they're worried the broader community hasn't gotten
>> > enough exposure to it yet.  repology.org has been sitting at 64
>> > instances of groff 1.23.0 for weeks now; I think pretty much everyone
>> > who's going to adopt it has done so by now.
>> >
>> 
>> ... in this case, the only blockers were really:
>> * me having https://github.com/Perl/perl5/issues/21239
>>   in the back of my head (wasn't paying full attention, just knew I had
>>   to go back and read any developments/further comments) 
>> 
>> * needing to look into a reported failure
>>   (https://bugs.gentoo.org/910226) - which looks like it should be fixed
>>   when we update our version of openvswitch (or we backport the patch,
>>   or both)
>
> So, if the Linux man-pages forces a dependency of groff-1.23.0, would it
> be problematic for Gentoo before you declare it stable, or would it be
> fine?

Yeah, this is fine - go ahead. The only issue would really be if
groff-1.23.0 was causing many issues which would prevent us from
unleashing newer man-pages any time soon, but that is not the case.

>
>> 
>> > CCing Sam James (the only Gentoo developer I know by name, because he's
>> > been active some of the same places I have been) in case he can throw
>> > some light on this.
>> 
>> Happily! Please feel free to loop me in if you reckon I can give input
>> on things.
>> 
>> So, all in all, none of this is a reflection on upstream, just a mix
>> of: how we do things normally (waiting a bit post-release unless there's
>> some serious regression in our stable version), waiting a bit longer
>> because it's a critical package (sometimes 60 days, sometimes a bit
>> longer), and not getting around to looking at that openvswitch bug yet.
>
> Yeah, the quality of groff-1.23.0 is way better than 1.22.4.  I'm just
> worried that forcing distros to use it too early might be detrimental.
>
> Cheers,
> Alex
>
>> 
>> I promise I would report any problems if I determined they were in any
>> way an upstream issue :)
>> 
>> Thanks for reaching out.
>> 
>> >
>> > Regards,
>> > Branden
>> >
>> 
>> best,
>> sam
>> 

thanks,
sam

