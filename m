Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFC922FF2B0
	for <lists+linux-man@lfdr.de>; Thu, 21 Jan 2021 19:02:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389455AbhAUSBP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jan 2021 13:01:15 -0500
Received: from queue02b.mail.zen.net.uk ([212.23.3.237]:42187 "EHLO
        queue02b.mail.zen.net.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389446AbhAUSA4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jan 2021 13:00:56 -0500
X-Greylist: delayed 953 seconds by postgrey-1.27 at vger.kernel.org; Thu, 21 Jan 2021 13:00:55 EST
Received: from [212.23.1.22] (helo=smarthost03c.mail.zen.net.uk)
        by queue02b.mail.zen.net.uk with esmtps (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
        (Exim 4.90_1)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1l2e0E-0004jZ-4j
        for linux-man@vger.kernel.org; Thu, 21 Jan 2021 17:44:14 +0000
Received: from [82.71.22.80] (helo=pip.localnet)
        by smarthost03c.mail.zen.net.uk with esmtpsa (TLS1.2:RSA_AES_256_CBC_SHA256:256)
        (Exim 4.80)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1l2dyu-0007xZ-Pj; Thu, 21 Jan 2021 17:42:52 +0000
From:   Deri <deri@chuzzlewit.myzen.co.uk>
To:     groff@gnu.org
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: Escaping hyphens ("real" minus signs in groff)
Date:   Thu, 21 Jan 2021 17:42:52 +0000
Message-ID: <10486111.L9TUC2MGYt@pip>
In-Reply-To: <a1af3f5c-f3e9-4bf3-cad5-389571c45d27@gmail.com>
References: <CAKgNAkihGY5W178QYHcRvs0f0E4HMQdWir9KOJsEzVF=1wi-sQ@mail.gmail.com> <20210121061158.5ul7226fgbrmodbt@localhost.localdomain> <a1af3f5c-f3e9-4bf3-cad5-389571c45d27@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-smarthost03c-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thursday, 21 January 2021 11:03:13 GMT Michael Kerrisk (man-pages) wrote:
> > And I mean copy-and-paste not just from PDF but from a terminal window.
> 
> Yes, but I have a question: "\-1" renders in PDF as a long dash
> followed by a "1". This looks okay in PDF, but if I copy and paste
> into a terminal, I don't get an ASCII 45. Seems seems to contradict
> what you are saying about cut-and-paste above. What am I missing?

If I do:-

echo "- \- \[fi]"|groff -Tpdf | okular -

I see a hyphen, minus and fi ligature. Copying to a text document gives hyphen 
hyphen f i. The reason is because gropdf adds a ToUnicode CMAP entry to fonts 
which used the text.enc encoding when created with afmtodit. You can see a 
difference if you run:-

echo "- \- \[fi]"|groff -Tpdf -P-u | okular -

Which prevents the CMAP entry, and when you copy to text the minus unicode cha
character is seen. (On my system the fi ligature is separated into f i still 
but I suspect that is KDE being "helpful").

Cheers

Deri



