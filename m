Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B7E1780722
	for <lists+linux-man@lfdr.de>; Fri, 18 Aug 2023 10:27:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344998AbjHRI0f convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 18 Aug 2023 04:26:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358641AbjHRI01 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Aug 2023 04:26:27 -0400
X-Greylist: delayed 490 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 18 Aug 2023 01:26:22 PDT
Received: from smtp99.iad3a.emailsrvr.com (smtp99.iad3a.emailsrvr.com [173.203.187.99])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9CD826BC
        for <linux-man@vger.kernel.org>; Fri, 18 Aug 2023 01:26:22 -0700 (PDT)
X-Auth-ID: a.josey@mail.opengroup.org
Received: by smtp29.relay.iad3a.emailsrvr.com (Authenticated sender: a.josey-AT-mail.opengroup.org) with ESMTPSA id 2AFE22225A;
        Fri, 18 Aug 2023 04:18:11 -0400 (EDT)
Content-Type: text/plain;
        charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.3\))
Subject: Re: POSIX manual pages
From:   Andrew Josey <ajosey@opengroup.org>
In-Reply-To: <25806cfb-8845-e4d4-6c18-6b02cb8c92ab@kernel.org>
Date:   Fri, 18 Aug 2023 09:18:09 +0100
Cc:     Geoff Clare <gwc@opengroup.org>,
        linux-man <linux-man@vger.kernel.org>,
        Eric Blake <eblake@redhat.com>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Content-Transfer-Encoding: 8BIT
Message-Id: <803C785B-DEB7-478C-A79B-29E5A5E7A8B9@opengroup.org>
References: <25806cfb-8845-e4d4-6c18-6b02cb8c92ab@kernel.org>
To:     Alejandro Colomar <alx@kernel.org>
X-Mailer: Apple Mail (2.3696.120.41.1.3)
X-Classification-ID: 7b153bd9-12e8-4879-bcbe-1031233552af-1-1
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

hi Alex

Thanks for your mail. In the past we have liaised with Michael Kerrisk.
Let me look at what has been done in the past then get back to you.


Please note that we develop our pages in our own macro set, although
do use groff as our typesetter. 
There are also certain conditions that the copyright holders impose on us.

regards
Andrew

> On 17 Aug 2023, at 21:01, Alejandro Colomar <alx@kernel.org> wrote:
> 
> Hi Andrew, Geoff,
> 
> I'm the maintainer of the Linux man-pages project[1], and also of the
> man-pages-posix project[2].
> 
> [1]:  <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/>
> [2]:  <https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git/>
> 
> From those upstream projects, GNU/Linux distros distribute packages like
> Debian's manpages-posix and manpages-posix-dev (in the non-free
> section)[3].
> 
> [3]:  <https://packages.debian.org/source/sid/hppa/manpages-posix>
> 
> I find it very uncomfortable to maintain the man-pages-posix project, as
> I don't have access to the source code of the pages.  I don't know what
> agreement was reached with the previous maintainer of the project,
> Michael Kerrisk, but I'd like to ask if it would be possible to open the
> sources, and what conditions would be nonnegotiable for something like
> that to happen.
> 
> Ideally, I'd be able to make a fork of POSIX's git repository, and push
> that fork to the kernel.org repo.  Maybe POSIX requires that the pages
> not be modified, or some section mentioning that the page has been
> modified and is not a source of truth.
> 
> I intend to distribute the pages as close as possible to the originals,
> with little to no modification; the only kind of modifications that I
> have in mind are typo fixes and formatting fixes, and use the build
> system of the Linux man-pages project, but I'd keep the source code
> largely untouched.
> 
> You'd probably have a source of bug reports here too.  :)
> 
> Thanks,
> 
> Alex
> 
> 
> -- 
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------
Andrew Josey                 
VP, Standards & Certification,	The Open Group          
Email: a.josey@opengroup.org
Apex Plaza,Forbury Road,Reading,Berks. RG1 1AX,UK.

The Open Group Certifications, see https://www.opengroup.org/certifications

ArchiMate, FACE logo, Making Standards Work, Open O  logo, Open O and Check certification logo, OSDU, Platform 3.0, The Open Group, TOGAF, UNIX, UNIXWARE, and X logo are registered trademarks and Boundaryless Information Flow, Build with Integrity Buy with Confidence, Commercial Aviation Reference Architecture, Dependability Through Assuredness, Digital Practitioner Body of Knowledge, DPBoK, EMMM, FACE, FHIM Profile Builder, FHIM  logo, FPB, Future Airborne Capability Environment, IT4IT, IT4IT logo, O-AA, O-DEF, O-HERA, O-PAS, Open Agile Architecture, Open FAIR, Open Footprint, Open Process Automation, Open Subsurface Data Universe, Open Trusted Technology Provider, Sensor Integration Simplified, SOSA, and SOSA logo are trademarks of The Open Group.









