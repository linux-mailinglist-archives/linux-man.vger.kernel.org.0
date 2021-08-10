Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 550683E86F0
	for <lists+linux-man@lfdr.de>; Wed, 11 Aug 2021 02:03:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235608AbhHKAED (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Aug 2021 20:04:03 -0400
Received: from mail.hallyn.com ([178.63.66.53]:55162 "EHLO mail.hallyn.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234289AbhHKAED (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 10 Aug 2021 20:04:03 -0400
X-Greylist: delayed 300 seconds by postgrey-1.27 at vger.kernel.org; Tue, 10 Aug 2021 20:04:02 EDT
Received: by mail.hallyn.com (Postfix, from userid 1001)
        id 92CAE472; Tue, 10 Aug 2021 18:58:38 -0500 (CDT)
Date:   Tue, 10 Aug 2021 18:58:38 -0500
From:   "Serge E. Hallyn" <serge@hallyn.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     "Serge E. Hallyn" <serge@hallyn.com>,
        linux-security-module <linux-security-module@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Kir Kolyshkin <kolyshkin@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: Documenting the requirement of CAP_SETFCAP to map UID 0
Message-ID: <20210810235838.GA4561@mail.hallyn.com>
References: <14cbab6f-19f6-a28c-05d8-453ecca62180@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <14cbab6f-19f6-a28c-05d8-453ecca62180@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Aug 08, 2021 at 11:09:30AM +0200, Michael Kerrisk (man-pages) wrote:
> Hello Serge,
> 
> Your commit:
> 
> [[
> commit db2e718a47984b9d71ed890eb2ea36ecf150de18
> Author: Serge E. Hallyn <serge@hallyn.com>
> Date:   Tue Apr 20 08:43:34 2021 -0500
> 
>     capabilities: require CAP_SETFCAP to map uid 0
> ]]
> 
> added a new requirement when updating a UID map a user namespace
> with a value of '0 0 *'.
> 
> Kir sent a patch to briefly document this change, but I think much more
> should be written. I've attempted to do so. Could you tell me whether the
> following text (to be added in user_namespaces(7)) is accurate please:

Sorry for the delay - this did not go into my main mailbox.

The text looks good.  Thanks!

> [[
>       In  order  for  a  process  to  write  to  the /proc/[pid]/uid_map
>        (/proc/[pid]/gid_map) file, all of the following requirements must
>        be met:
> 
>        [...]
> 
>        4. If  updating  /proc/[pid]/uid_map to create a mapping that maps
>           UID 0 in the parent namespace, then one of the  following  must
>           be true:
> 
>           *  if  writing process is in the parent user namespace, then it
>              must have the CAP_SETFCAP capability in that user namespace;
>              or
> 
>           *  if  the writing process is in the child user namespace, then
>              the process that created the user namespace  must  have  had
>              the CAP_SETFCAP capability when the namespace was created.
> 
>           This rule has been in place since Linux 5.12.  It eliminates an
>           earlier security bug whereby a UID 0  process  that  lacks  the
>           CAP_SETFCAP capability, which is needed to create a binary with
>           namespaced file capabilities (as described in capabilities(7)),
>           could  nevertheless  create  such  a  binary,  by the following
>           steps:
> 
>           *  Create a new user namespace with the identity mapping (i.e.,
>              UID  0 in the new user namespace maps to UID 0 in the parent
>              namespace), so that UID 0 in both namespaces  is  equivalent
>              to the same root user ID.
> 
>           *  Since  the  child process has the CAP_SETFCAP capability, it
>              could create a binary with namespaced file capabilities that
>              would  then  be  effective in the parent user namespace (be‐
>              cause the root user IDs are the same in the two namespaces).
> 
>        [...]
> ]]
> 
> Thanks,
> 
> Michael
> 
> -- 
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/
