Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA65C74BF23
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 22:26:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229454AbjGHU0G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 16:26:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjGHU0F (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 16:26:05 -0400
X-Greylist: delayed 536 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 08 Jul 2023 13:26:03 PDT
Received: from luonnotar.infodrom.org (luonnotar.infodrom.org [217.114.79.202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAF18E4A
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 13:26:03 -0700 (PDT)
Received: by luonnotar.infodrom.org (Postfix, from userid 10)
        id 52B12408046; Sat,  8 Jul 2023 22:17:05 +0200 (CEST)
Received: by finlandia.home.infodrom.org (Postfix, from userid 1000)
        id 79D2FCA05CE; Sat,  8 Jul 2023 22:14:32 +0200 (CEST)
Date:   Sat, 8 Jul 2023 22:14:32 +0200
From:   Joey Schulze <joey@infodrom.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: SPDX license review requests
Message-ID: <ZKnDqEF+RFVUyW+Y@finlandia.home.infodrom.org>
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>
 <ca053426-bd13-055a-88ab-9a4873f13f7e@gmail.com>
 <ZHXweLNKqHKoybXM@tassilo>
 <eda85fda-6182-fc13-3943-9084b187433e@gmail.com>
 <CAK719L2PjTr=-c_AEi89TVrJV7DHwyfBJjH6z6Bozc0Rk+rOfQ@mail.gmail.com>
 <b164d81c-225f-f450-c28a-f4aa9f219448@os.amperecomputing.com>
 <e8f9685b-ef42-6d0f-c18e-861a26922f6e@Shaw.ca>
 <978e3f22-8017-eb91-0737-9a043c335122@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <978e3f22-8017-eb91-0737-9a043c335122@gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael and others!

Alejandro Colomar wrote:
> [Add Martin Schulze, as he holds copyright of dir_colors.5.]
> 
> On 6/29/23 19:01, Brian Inglis wrote:
> > On 2023-06-29 10:01, Lameter, Christopher wrote:
> > > On Thu, 29 Jun 2023, Lukas Javorsky wrote:
> > > >       >> VERBATIM_TWO_PARA
> > > >       >>      This license was first used in the Linux man-pages
> > > > in version
> > > >       >>      3.07 (year 2008) in a single page:
> > > >       >>
> > > >       >>              move_pages.2
> > > >       >>                      Added by Michael Kerrisk
> > > > <mtk.manpages@gmail.com>,
> > > >       >>                      but Copyright (C) 2006 Silicon
> > > > Graphics, Inc.
> > > >       >>                                        Christoph Lameter
> > > >       >>
> > > >       >>      It was later reused in another page:
> > > The manpage was written by me and later edited by Michael as far as
> > > I remember.
> > > >       >>
> > > >       >>              migrate_pages.2
> > > >       >>                      Copyright 2009 Intel Corporation
> > > >       >> .\"                Author: Andi Kleen
> > > >       >> .\" Based on the move_pages manpage which was
> > > >       >> .\" This manpage is Copyright (C) 2006 Silicon Graphics, Inc.
> > > >       >> .\"                               Christoph Lameter
> > > >       >>
> > > >       >>      This license is the one considered non-free by
> > > > Fedora, and which
> > > >       >>      we need to drop.  Luckily it's only two pages, so
> > > > they could be
> > > >       >>      reasonably rewritten in a worst case.
> > > The licensing was GPL and not a proprietary one.
> > > >       So, given this, if you give consent to change your pages to use
> > > >       Linux-man-pages-copyleft, I'll do so provided for the
> > > > pages that are
> > > >       completely yours, and will keep in mind that when others
> > > > agree, I'll also
> > > >       change the pages that are shared.
> > > I have no objections.
> > 
> > Updating these licences are really nice to haves for this project.
> > 
> > Just to be clear, the FSF and Fedora issue is only with *dir_colors*(5)
> > licensed under *LDPv1* which contains the contentious clause:
> > 
> >      "c) You must not add notes to the Document implying that the reader
> > had better read something produced using Texinfo."
> > 
> >      https://gitlab.com/fedora/legal/fedora-license-data/-/issues/211
> > 
> >      https://github.com/spdx/license-list-XML/issues/1957
> > 
> > which restricts modification, especially by GNU or other projects which
> > may wish to offer and promote alternative doc formats or interfaces.
> > 
> > LDPv2 requires notifying the author of modifications by email if
> > provided, and suggested authors could add a generic clause c)
> > prohibiting modifications without author consent.
> > 
> > TLDP is now by default under GFDLv1.2+.
> > 
> > Another problematic licence is *JSON*, which contains the clause:
> > 
> >      "The Software shall be used for Good, not Evil."
> > 
> > restricting use with non-specific subjective terms, unlike similar
> > licences with specific objective restrictions, like not being used for
> > anything related to animal testing or nuclear weapons.
> > 
> 
> -- 
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
> 

For the record,

I would like to re-license dir_colors(5) under the GPLv2+

Please adjust the manpage source accordingly.

.\" Copyright (c) 2001 Martin Schulze <joey@infodrom.org>
.\"
.\" This is free documentation; you can redistribute it and/or
.\" modify it under the terms of the GNU General Public License as
.\" published by the Free Software Foundation; either version 2 of
.\" the License, or (at your option) any later version.
.\"
.\" The GNU General Public License's references to "object code"
.\" and "executables" are to be interpreted as the output of any
.\" document formatting or typesetting system, including
.\" intermediate and printed output.
.\"
.\" This manual is distributed in the hope that it will be useful,
.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
.\" GNU General Public License for more details.
.\"
.\" You should have received a copy of the GNU General Public
.\" License along with this manual; if not, write to the Free
.\" Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139,
.\" USA.

This should help keep the manpage free and a version in Fedora.

Regards

	Joey

-- 
Beware of bugs in the above code; I have only proved it correct,
not tried it.  -- Donald E. Knuth
