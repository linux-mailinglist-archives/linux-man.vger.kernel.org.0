Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C9FB43FC65
	for <lists+linux-man@lfdr.de>; Fri, 29 Oct 2021 14:35:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231403AbhJ2Mhw convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 29 Oct 2021 08:37:52 -0400
Received: from elephants.elehost.com ([216.66.27.132]:24139 "EHLO
        elephants.elehost.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231409AbhJ2Mhv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Oct 2021 08:37:51 -0400
X-Greylist: delayed 1459 seconds by postgrey-1.27 at vger.kernel.org; Fri, 29 Oct 2021 08:37:51 EDT
X-Virus-Scanned: amavisd-new at elehost.com
Received: from Mazikeen (cpe00fc8d49d843-cm00fc8d49d840.cpe.net.cable.rogers.com [99.229.22.139] (may be forged))
        (authenticated bits=0)
        by elephants.elehost.com (8.15.2/8.15.2) with ESMTPSA id 19TCAl61057081
        (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Fri, 29 Oct 2021 08:10:47 -0400 (EDT)
        (envelope-from rsbecker@nexbridge.com)
Reply-To: <rsbecker@nexbridge.com>
From:   <rsbecker@nexbridge.com>
To:     "'Alejandro Colomar \(man-pages\)'" <alx.manpages@gmail.com>,
        "'Libc-alpha'" <libc-alpha@sourceware.org>,
        "'linux-man'" <linux-man@vger.kernel.org>
Cc:     <git@vger.kernel.org>, <tech@openbsd.org>
References: <a0371f24-d8d3-07d9-83a3-00a4bf22c0f5@gmail.com> <73ac38a2-c287-4cc1-4e9c-0f9766ac4c0c@gmail.com>
In-Reply-To: <73ac38a2-c287-4cc1-4e9c-0f9766ac4c0c@gmail.com>
Subject: RE: Is getpass(3) really obsolete?
Date:   Fri, 29 Oct 2021 08:10:41 -0400
Organization: Nexbridge Inc.
Message-ID: <00d501d7ccbe$0169c340$043d49c0$@nexbridge.com>
MIME-Version: 1.0
Content-Type: text/plain;
        charset="utf-8"
Content-Transfer-Encoding: 8BIT
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-ca
Thread-Index: AQIurXUz3siHir4QEPyFWZm7FNZOgwHZ6oOZqy1RC3A=
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On October 29, 2021 7:29 AM, Alejandro Colomar wrote:
> On 10/29/21 13:15, Alejandro Colomar wrote:
> > Hi,
> >
> > As the manual pages says, SUSv2 marked it as LEGACY, and POSIX doesn't
> > have it at all.  The manual page goes further and says "This function
> > is obsolete. Do not use it." in its first lines.
> >
> > But, glibc doesn't seem to have deprecated this function at all.  And
> > it seems to be the most portable way to get a password, even if it's
> > not in POSIX.
> >
> > BSDs have readpassphrase(3), but glibc doesn't, so unless you
> > recommend
> 
> OpenBSD also marks getpass(3) as obsolete and recommends
> readpassphrase(3):
> <https://man.openbsd.org/getpass>
> 
> > using readpassphrase(3) from libbsd, or plan to add it to glibc, I
> > think
> > getpass(3) should be the recommended function in Linux, and therefore
> > we should remove the hard words against it.
> >
> > As a real example, git(1) uses getpass(3).
> > <https://github.com/git/git/blob/master/compat/terminal.c>
> >
> > What are your thoughts?

getpass() is obsolete in POSIX.2. However, some platforms still are on POSIX.1, so replacing it instead of providing a configure detection/switch for it might cause issues.

-Randall

