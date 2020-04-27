Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A6E421B989B
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2020 09:31:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726460AbgD0HbD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Apr 2020 03:31:03 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:19644 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726349AbgD0HbD (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 27 Apr 2020 03:31:03 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id 80EFE20309;
        Mon, 27 Apr 2020 09:31:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1587972661;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=9B5f9GQOvWzuf0q7EgKBlTpkLpTlzDhu7Z/DG4VjYAk=;
        b=xv2tKPPnV5MTBkDGEJuH4VOCuKsN1gIY2V63wcSmy9GlzMlxqqVjOEeIQ/k1yvd+ejOvRi
        P282L4d9yDvT3QkzoEdYKBwFGundtF39L1pvcep94FpG6tGuqVPF7YWOssbYTqZZfsq8sR
        1/+inSoHWmurGQylNE+2kejoE3PGF8Zy94jBnvZhDf5ES9pP6hJCep5AYvlcsvHemSGm1z
        uiCN1raQ77dJu7W/FwbZODOsjm4AS3ruM3HN4vLdPeTGspvuI/Ead87n1T3UfeGGGPc6G0
        1U9cZYIse/eUfE/7kuD/jePFDpXeE4t2Supd25slkZVMKm1AqPcelGCxDm81uw==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Mon, 27 Apr
 2020 09:31:01 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.1913.005; Mon, 27 Apr 2020 09:31:01 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Helge Kreutzmann <debian@helgefjell.de>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: Errors in man pages, here: man-pages(7): Wording
Thread-Topic: Errors in man pages, here: man-pages(7): Wording
Thread-Index: AQHWFhcyy+FxKVnN60uOUacrYZFR7qiBltaAgAmPO4CAAXX5xQ==
Date:   Mon, 27 Apr 2020 07:31:01 +0000
Message-ID: <e382704bcfe94db69f93ea5b40648d3b@bfs.de>
References: <20200419064809.GA31093@Debian-50-lenny-64-minimal>
 <8e7a241a-936f-829c-42f6-984ce82c4e20@gmail.com>,<20200426110025.GB2031@Debian-50-lenny-64-minimal>
In-Reply-To: <20200426110025.GB2031@Debian-50-lenny-64-minimal>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=-2.03
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spamd-Result: default: False [-2.03 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[3];
         TO_DN_SOME(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         DKIM_SIGNED(0.00)[];
         NEURAL_HAM(-0.00)[-0.951];
         FREEMAIL_TO(0.00)[helgefjell.de,gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-2.03)[95.21%]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> > "Overviews or descriptions of various topics, conventions and protocols=
, "
> > "character set standards, the standard filesystem layout, and miscellan=
eous "
> > "other things."

I guess the author  would like to see something like this:
(Section 7)

"Overviews or descriptions of various topics, conventions and protocols lik=
e:
  "character set standards, standard filesystem layout, etc."

Note the "like"

hope that helps,

re,
 wh


________________________________________
Von: linux-man-owner@vger.kernel.org <linux-man-owner@vger.kernel.org> im A=
uftrag von Helge Kreutzmann <debian@helgefjell.de>
Gesendet: Sonntag, 26. April 2020 13:00
An: Michael Kerrisk (man-pages)
Cc: linux-man@vger.kernel.org
Betreff: Re: Errors in man pages, here: man-pages(7): Wording

Hello Michael,
On Mon, Apr 20, 2020 at 11:01:27AM +0200, Michael Kerrisk (man-pages) wrote=
:
> On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > **
> >
> > Wording:

=85

> > b)
> > "Overviews or descriptions of various topics, conventions and protocols=
, "
> > "character set standards, the standard filesystem layout, and miscellan=
eous "
> > "other things."
>
> I need more explanation of the problem here.

I reread it several times. I'm lost what the previous translator, who
is no longer active, meant.

I apologize for not having caught this one myself before reporting.

Please close this sub issue.

Greetings

         Helge

--
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.ph=
p
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/
