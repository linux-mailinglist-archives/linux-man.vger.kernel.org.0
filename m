Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BF573CA1FF
	for <lists+linux-man@lfdr.de>; Thu, 15 Jul 2021 18:09:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229553AbhGOQMp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Jul 2021 12:12:45 -0400
Received: from mout.gmx.net ([212.227.15.18]:49409 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229662AbhGOQMp (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 15 Jul 2021 12:12:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1626365388;
        bh=KdpAKKgiz7rnlFkHJaatRcei0ajKFdkrvIwOJ8poDn0=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
        b=FmpdIbZLZ+W8Jf0OicmNtxmMRIgXZ1ZbkwtN7TkgmG/X3ggYA3d7gSLbruODCc1eo
         pANvxefI0wCsTYrzXlnSQWcdVIFA4RcSwsl06jyTa3DNHc+de9feAQOV6rEYCpCrTU
         kU/GrkzoXrjAQS7LU4kR+4DGNn4um5aO2PSyqVqc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [79.45.22.177] ([79.45.22.177]) by web-mail.gmx.net
 (3c-app-mailcom-bs05.server.lan [172.19.170.173]) (via HTTP); Thu, 15 Jul
 2021 18:09:48 +0200
MIME-Version: 1.0
Message-ID: <trinity-545d117b-65f0-4935-91cb-0ea54b07c375-1626365388128@3c-app-mailcom-bs05>
From:   Nora Platiel <nplatiel@gmx.us>
To:     Shawn Landden <shawn@git.icu>, mtk.manpages@gmail.com,
        alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Re: execve(2) man page: "absolute pathname" inconsistency
Content-Type: text/plain; charset=UTF-8
Date:   Thu, 15 Jul 2021 18:09:48 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <1778431625342219@mail.yandex.com>
References: <trinity-131cbf9a-6570-4d3c-8b80-a808d1ad445a-1624567328724@3c-app-mailcom-bs07>
 <9558b097-7760-beb5-be4d-13e298461e82@gmail.com>
 <1778431625342219@mail.yandex.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:deqIq+RzGUkn7XgfxV4U6OEYg29uEotGmlR+e5m9KNrwwm8nMp9dhR+GvJTKTmgOU8ONg
 K/Hi1CF9CymlwJNajHhJFqGHEHvl7jxQ7BmG2lxeA9/XMZFOzcFaiIIOJ3pI9m2ApN2Ze2z8Qnj1
 J1a5vv7MpB1MgFEhjy5sBRAEHt9SH7Jq303eByentqdbvbIH+gjWzKqtW96u7J8/shYOcHfmC7q6
 3kumLexaux3/YZbygweVl2BgQ2gYbynwQ9cezDexS7gyEnc6TnrpwLaGAXagG2iBwiqLlisJ7T+2
 k8=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5vDt54aMnH0=:6a9gQ1ndGnstODeJkokJsI
 FRYVYT1GlAt7O1A22FzqZhTdzU6LT7tIzEhNUigng7des9i+FEna2O6Y5WdL1fsWj6bVjqYNt
 b9OWaMiE1edHzD/Kuc5+6Iv9fkTxXvQCdNW0N3PvX79xnESqfj2OhcWf5Qwfh3YTqSkP6D89U
 CewWQB3pkMLcKxUsgxk2vW0K/wSVoemahxs6xHu8+WIDIWwJHVZSit0S1CFGrIO4ckGVojGBq
 ux6/sBnbRQzioOe6HqsYYgeQ82uNy/VeSMmK8AdeK8qWz6pVWplGgb9T2gYz7lGMVb96Qdzwh
 qdR+naJdbbAW+wcAHwFQkpEAjaA98R+YUxDyxp3VzWIjrupgcm8aIOgrqhPdfs7xbUUqG6U6y
 pXOw2asFpaHcOnNyHTs0ozsPNRdZPCQvS5xwu4RW6ed7Cfrm+qhXGOaJvQcMtBIcJp6BLO6/X
 bTAJpqQQK+lP7eXgLdLjgKLbxAQvyptl/5/kWtmfq8uWtJFZXTP0lalSKPQWnByjn5Ri1eA5F
 llPoTLX56Ow2+lMSOE6xEnKkGAlaZQzmENExrZ11C4pcYARBwezLx8ytDwk2Eid5NHKZbUwjv
 +uaPTzEWttPmNqoi3kg2gPIbIdpNyPY/X1PjujKeei0AJUqAEj1ndXWXjgFprUw/KQVYcfL3j
 EgWFapWJyB8W6i+CRTP6dlS/51eJ6/ch/+iV7sd3dFp72YuOi0dNnirf7+BXNPrzwyN+LYqO3
 jlAghdSFpTo34vTHfwSTTffDJVqFujTJZfVvm5VwjilX6mncqFeqp06nqFPDRnhq1y+cTbf/Y
 Rmv9PQB4OpAbH9yN18dJfaliI0m3Q==
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2021-07-03 21:58, Shawn Landden wrote:
> The absolute pathname is available in the Linux-specific auxiliary-vecto=
r
> feature. Here is a suggested patch:

I haven't made sense of the comment on the last added line, but the "visib=
le" part looks good to me.
Thanks,
NP

> diff --git a/man2/execve.2 b/man2/execve.2
> index c18ca5412..66a18af27 100644
> --- a/man2/execve.2
> +++ b/man2/execve.2
> @@ -344,20 +344,27 @@ will be invoked with the following arguments:
> .EE
> .in
> .PP
> where
> .I pathname
> -is the absolute pathname of the file specified as the first argument of
> +is the pathname of the file specified (may be relative to
> +.Br getcwd (3)
> +of the caller) as the first argument of
> .BR execve (),
> and
> .I arg...
> is the series of words pointed to by the
> .I argv
> argument of
> .BR execve (),
> starting at
> .IR argv[1] .
> +The absolute pathname of the script is also available in same auxiliary=
 vector the environment and argument variables are in, as
> +.BR AT_EXECFN .
> +See
> +.BR getauxval (3).
> +,\" I am not sure if this claim is as clear as it can be, but we are al=
ready wasting so much memory for these so.....it would be possible to copy=
 what is needed out of the environment, and then move the stack back into =
the massive environment vector Linux passes (and which has an almost unbou=
nded size).
> Note that there is no way to get the
> .IR argv[0]
> that was passed to the
> .BR execve ()
> call.
> --
> 2.30.2

