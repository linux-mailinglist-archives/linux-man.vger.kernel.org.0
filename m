Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 494D93008AD
	for <lists+linux-man@lfdr.de>; Fri, 22 Jan 2021 17:29:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728622AbhAVQ2m convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 22 Jan 2021 11:28:42 -0500
Received: from smarthost01b.mail.zen.net.uk ([212.23.1.3]:40576 "EHLO
        smarthost01b.mail.zen.net.uk" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729738AbhAVQ2h (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jan 2021 11:28:37 -0500
X-Greylist: delayed 81894 seconds by postgrey-1.27 at vger.kernel.org; Fri, 22 Jan 2021 11:28:36 EST
Received: from [82.71.22.80] (helo=pip.localnet)
        by smarthost01b.mail.zen.net.uk with esmtpsa (TLS1.2:RSA_AES_256_CBC_SHA256:256)
        (Exim 4.80)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1l2zHe-0007gv-J2; Fri, 22 Jan 2021 16:27:38 +0000
From:   Deri <deri@chuzzlewit.myzen.co.uk>
To:     groff@gnu.org
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: Escaping hyphens ("real" minus signs in groff)
Date:   Fri, 22 Jan 2021 16:27:38 +0000
Message-ID: <1730363.VJsQCkzT93@pip>
In-Reply-To: <20210122035558.ny2u3ddel2mltrve@localhost.localdomain>
References: <CAKgNAkihGY5W178QYHcRvs0f0E4HMQdWir9KOJsEzVF=1wi-sQ@mail.gmail.com> <a1af3f5c-f3e9-4bf3-cad5-389571c45d27@gmail.com> <20210122035558.ny2u3ddel2mltrve@localhost.localdomain>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="UTF-8"
X-Originating-smarthost01b-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Friday, 22 January 2021 03:56:00 GMT G. Branden Robinson wrote:
> The gap between aspiration and implementation.  I don't think the
> "copy-and-paste from PDF to terminal window" matter is completely sorted
> out yet.

Hi Branden,

I can't seem to make this not work. In my last email I explained how a default 
ucmap is installed in the pdfs produced by gropdf, so assuming the pdf viewer 
supports the pdf standard it should not require a change to the man macros you 
favour. I have tested using 'xpdf' as the viewer which pastes:-

- − ﬁ	<== without ucmap
- - fi	<== with ucmap

Of course, if the pdf is produced by using grops and ghostscript the result 
will be the same as using gropdf with no ucmap, i.e. '-' and '\-' will be 
pasted as different characters.

Cheers 

Deri



