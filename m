Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3006276FE85
	for <lists+linux-man@lfdr.de>; Fri,  4 Aug 2023 12:31:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229882AbjHDKbK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Aug 2023 06:31:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231339AbjHDKbJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Aug 2023 06:31:09 -0400
X-Greylist: delayed 1404 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 04 Aug 2023 03:31:06 PDT
Received: from pulsar.hadrons.org (2.152.192.238.dyn.user.ono.com [2.152.192.238])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A42E946B2
        for <linux-man@vger.kernel.org>; Fri,  4 Aug 2023 03:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hadrons.org
        ; s=201908; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
        :References:Message-ID:Subject:Cc:To:From:Date:From:Reply-To:Subject:
        Content-ID:Content-Description:X-Debbugs-Cc;
        bh=cuJrna63J/rlGGVtVoEBq0pitvO3+a5uumHxPMfqi14=; b=HafgodxdNLEnQnrB41Lwjn5jJN
        KXIcQ9U13KE2HZKttzE2AsZiFWuKLMM8Bhj6sJW7iHBAzIgwncjj0KDG+iAXYtrEOICJLe/AVEsJE
        HKfRLvId/cNzu/xkjEaghJ10FiBMPiLMQ4m2pi4CvrQBePUOdGOGBw25MusbRZAsII9myBG+UtcGM
        fLJnEkBpib4DcMp0LtdnX1YmHCqdjP4omaW4Am5QfDUYTJOTRma9A135KPooWuNFZ+27PVKqASnWo
        4U3/HjibaNRumgUsN+l62Ptrx3R+kozWtd67ynXRtE1xk8r3xSwpua91eXnHB+ODd+UggSiMSNkSh
        JYCUMcYw==;
Received: from guillem by pulsar.hadrons.org with local (Exim 4.96)
        (envelope-from <guillem@hadrons.org>)
        id 1qRrid-0000O3-00;
        Fri, 04 Aug 2023 12:07:39 +0200
Date:   Fri, 4 Aug 2023 12:07:38 +0200
From:   Guillem Jover <guillem@hadrons.org>
To:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] fsync.2: no writability requirements, must operate on
 directories
Message-ID: <ZMzN6jovzyly8tjC@thunder.hadrons.org>
Mail-Followup-To: Guillem Jover <guillem@hadrons.org>,
        =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <oc67sum2hk73gl7oim7kitbqac6gcursqcxf6j2qjxzzdzgbxq@afirbuozty2f>
 <4aa54e57-6601-088f-f143-23846af2b783@kernel.org>
 <mwgvw3rh3tv6v3vhwf3osw7s6rs4hmfuapbycnqkk57anpqpsp@qoevitjgkjod>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <mwgvw3rh3tv6v3vhwf3osw7s6rs4hmfuapbycnqkk57anpqpsp@qoevitjgkjod>
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_SORBS_DUL,RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED,
        URI_HEX autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi!

On Thu, 2023-08-03 at 16:20:10 +0200, наб wrote:
> On Thu, Aug 03, 2023 at 03:22:50PM +0200, Alejandro Colomar wrote:
> > > diff --git a/man2/fsync.2 b/man2/fsync.2
> > > index 1043e6a1b..9ced40b28 100644
> > > --- a/man2/fsync.2
> > > +++ b/man2/fsync.2
> > > @@ -155,12 +155,6 @@ .SH VERSIONS
> > >  .\" POSIX.1-2001: It shall be defined to -1 or 0 or 200112L.
> > >  .\" -1: unavailable, 0: ask using sysconf().
> > >  .\" glibc defines them to 1.
> > > -.PP
> > > -On some UNIX systems (but not Linux),
> > > -.I fd
> > > -must be a
> > > -.I writable
> > > -file descriptor.
> > But that's still true.  HP-UX and AIX had that issue.  I'd move
> > that paragraph to HISTORY, and say "some old UNIX systems".

> Apparently still true on AIX, fsync(2) "Last Updated: 2023-03-24"
> (https://www.ibm.com/docs/en/aix/7.3?topic=f-fsync-fsync-range-subroutine)
> says
>   Note: The file identified by the FileDescriptor parameter must be open
>   for writing when the fsync subroutine is issued or the call is
>   unsuccessful. This restriction was not enforced in BSD systems. The
>   fsync_range subroutine does not require write access.
> and
>   EBADF  The FileDescriptor parameter is not a valid file descriptor
>          open for writing.

Yes. Also from current dpkg git HEAD on "AIX power8-aix 2 7 00F9C1964C00":

  checking whether fsync works on directories... no

out of:

  https://git.dpkg.org/cgit/dpkg/dpkg.git/tree/m4/dpkg-funcs.m4#n28

> So this purely-nominal restriction is likely to go away because
> Issue 8 requires directories to be fsync()able. It appears that classic
> UNIXes https://www.austingroupbugs.net/view.php?id=672 (comment 0001499)
> simply had no need for fsync() on directories and thus we 

That's still not released though? And after skimming over the proposed
changes, I'm not sure they match reality either on Linux? For example,
the current amount of fsync() done by dpkg for all filesystem objects
(not just the db it had always historically done) was precisely to
avoid 0-sized files that it was getting on abrupt system termination
at least on ext3 and ext4(?). (I'm not sure whether this has improved
since then though, but at the time the Linux filesystem developers
pretty much said this was a problem with userland code as developers
were "writing buggy code".)

> No clue about recent HP-UX, no offline documentation seems to be extant.

The page I found at the time is still on the Internet Archive:

  https://web.archive.org/web/20080906221105/http://h30097.www3.hp.com/docs/base_doc/DOCUMENTATION/V50_HTML/MAN/MAN2/0033____.HTM

but I do not have access to a current HP-UX system, so not sure
whether that might have changed.

Ref:
<https://lore.kernel.org/linux-man/20120101024916.GA16572@gaara.hadrons.org/>

> Try this on for size:
> -- >8 --
> Subject: [PATCH v2] fsync.2: no writability requirements, must operate on
>  directories
> 
> POSIX has for a long time implied that directories are fsyncable,
> and since Issue 8 explicitly specifies directory syncing semantics:
>   https://www.austingroupbugs.net/view.php?id=672

See above.

> Simultaneously, directories being unopenable for writing is a
> Longest-Standing UNIX Semantic, present in the UNIX Programmer's Manual
> under directory (V), and has always been enshrined in the standards.

> Replace the FUD that says that some UNIXes require the fd to be writable:
> they /must not/ and this confuses users:
>   https://101010.pl/@eater@cijber.social/110824211348995583
> with mentioning explicitly that HP-UX and AIX (by name) are just broken.

To me whether this is supposed to conform to some historic semantics
does not seem very relevant when making code portable, and when that
contradicts the specific system explicit documentation and behavior.
And then "FUD" seems completely out of line here (even though I didn't
write that man page update), and incorrect, because there _are_ such
systems in existence…

> @@ -181,6 +175,13 @@ .SH HISTORY
>  or
>  .BR sdparm (8)
>  to guarantee safe operation.
> +.PP
> +Under AT&T UNIX System V Release 4
> +.I fd
> +needs to be opened for writing.
> +This is by itself incompatible with the original BSD interface,
> +and is now forbidden by POSIX,
> +but nevertheless survives in HP-UX and AIX.
>  .SH SEE ALSO
>  .BR sync (1),
>  .BR bdflush (2),

My intention when I mentioned the currently documented behavior in 2012,
was to help other people that might stumble over this portability issue.
If the current documentation is not clear, then let's improve it. But
this update seems more confusing than helpful to me, in addition of
being wrong as there's no current POSIX version that forbids this.

Thanks,
Guillem
