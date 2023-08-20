Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C4D978209F
	for <lists+linux-man@lfdr.de>; Mon, 21 Aug 2023 00:41:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231216AbjHTWlg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Aug 2023 18:41:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230506AbjHTWlf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Aug 2023 18:41:35 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 835549D
        for <linux-man@vger.kernel.org>; Sun, 20 Aug 2023 15:41:33 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0A72661844
        for <linux-man@vger.kernel.org>; Sun, 20 Aug 2023 22:41:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81E4FC433C8;
        Sun, 20 Aug 2023 22:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692571292;
        bh=zAR7pDvLO7bQLEBzj+pHX6j0tFYjIOTVs4nZZdlcReQ=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=HaKXuANqKwyyel1go3vbcXsrysPo5lL6yrioNrAs0pVE7AnM9gwsUX7DJXdrFUuAB
         h50wBTeNZ9934fk7aUR8fiDSBF4FgZoeGDysJ5MH68NpDkJUfMMeCYr4WVobGwlepQ
         71AJdIZmInKSmi+XXYrMG5rHALp9uudJW2FPMjI/RLNJ97bTAFilUwPCYVracLUZEI
         fl1ybyADhme2h+mAvdCrQMFfP5hUO31V5Gr7kivFhXxabsSIWG0aGLB5NxeGNvt8+V
         mzYcGDGqMUOVNZQ0qKm5N6jCIaAhcHmzI8BhwaqRw3S3swnPQjZfoFLNVasJdKM32X
         kmG8ww+dpXCNw==
Message-ID: <b05dae48-4304-7b87-8b58-a0734fdd2bb9@kernel.org>
Date:   Mon, 21 Aug 2023 00:41:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: '-' vs '\-' in TH (man(7))
Content-Language: en-US
To:     Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org, groff@gnu.org
Cc:     g.branden.robinson@gmail.com
References: <4e1081d0-1d77-0a00-78bf-5dc40522f428@kernel.org>
 <8204da79-bca6-02b7-a883-6fd77b4f97a5@Shaw.ca>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <8204da79-bca6-02b7-a883-6fd77b4f97a5@Shaw.ca>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-8.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-08-20 23:51, Brian Inglis wrote:
> On Sun, 20 Aug 2023 21:10:52 +0200, Alejandro Colomar wrote:
>> Hi Branden,
>> I just noticed that the Linux man-pages use '-' in TH.  That's
>> surprising to me, as Michael was careful to use '\-' correctly.
>> In the documentation, I couldn't find anything that says TH
>> should be different than anywhere else, and so I'd expect he
>> would have used it there.
>> $ grep -rn '^\.TH [^ ]*-' man* | wc -l
>> 30q
>> $ grep -rn '^\.TH [^ ]*\\-' man* | wc -l
>> 0
>> Was it just an oversight, or are there any obscure reasons to do
>> that?
>=20
> Those are just normal *hyphens* *within* the page title command/functio=
n/...=20
> name; perhaps you are thinking of '\-' used as a *dash*(/minus) after t=
he page=20
> title command/function/... name following .SH NAME in all 1111 files?
>=20
> See groff_char(7):
>=20
> "For best results in roff systems, use the =E2=80=9C=E2=88=92=E2=80=9D =
character in input outside an=20
> escape sequence only to mean a hyphen, as in the phrase =E2=80=9Clong-t=
erm=E2=80=9D. For a minus=20
> sign in running text or a Unix command-line option dash, use \=E2=88=92=
 (or \[=E2=88=92] in=20
> groff if you find it helps the clarity of the source document)."...
>=20

Are they all?  I see they are all in man7 (there's one in man5, which is
my bad, actually), so it's more likely that the names don't represent
some identifier that has a minus sign in it, however, I still have doubts=
=2E


$ grep -rn '^\.TH [^ ]*-' man*
man5/proc_sysrq-trigger.5:7:.TH proc_sysrq-trigger 5 (date) "Linux man-pa=
ges (unreleased)"
man7/man-pages.7:11:.TH man-pages 7 (date) "Linux man-pages (unreleased)"=

man7/iso_8859-10.7:6:.TH ISO_8859-10 7 (date) "Linux man-pages (unrelease=
d)"
man7/iso_8859-8.7:8:.TH ISO_8859-8 7 (date) "Linux man-pages (unreleased)=
"
man7/iso_8859-9.7:6:.TH ISO_8859-9 7 (date) "Linux man-pages (unreleased)=
"
man7/rtld-audit.7:8:.TH RTLD-AUDIT 7 (date) "Linux man-pages (unreleased)=
"
man7/bpf-helpers.7:30:.TH "BPF-HELPERS" 7 "2023-04-11" "Linux v6.2"
man7/iso_8859-14.7:6:.TH ISO_8859-14 7 (date) "Linux man-pages (unrelease=
d)"
man7/user-keyring.7:6:.TH user-keyring 7 (date) "Linux man-pages (unrelea=
sed)"
man7/koi8-u.7:8:.TH KOI8-U 7 (date) "Linux man-pages (unreleased)"
man7/iso_8859-11.7:8:.TH ISO_8859-11 7 (date) "Linux man-pages (unrelease=
d)"
man7/iso_8859-1.7:8:.TH ISO_8859-1 7 (date) "Linux man-pages (unreleased)=
"
man7/iso_8859-6.7:6:.TH ISO_8859-6 7 (date) "Linux man-pages (unreleased)=
"
man7/persistent-keyring.7:6:.TH persistent-keyring 7 (date) "Linux man-pa=
ges (unreleased)"
man7/signal-safety.7:6:.TH signal-safety 7 (date) "Linux man-pages (unrel=
eased)"
man7/thread-keyring.7:6:.TH thread-keyring 7 (date) "Linux man-pages (unr=
eleased)"
man7/iso_8859-4.7:6:.TH ISO_8859-4 7 (date) "Linux man-pages (unreleased)=
"
man7/process-keyring.7:6:.TH process-keyring 7 (date) "Linux man-pages (u=
nreleased)"
man7/iso_8859-2.7:9:.TH ISO_8859-2 7 (date) "Linux man-pages (unreleased)=
"
man7/utf-8.7:10:.TH UTF-8 7 (date) "Linux man-pages (unreleased)"
man7/armscii-8.7:6:.TH ARMSCII-8 7 (date) "Linux man-pages (unreleased)"
man7/iso_8859-13.7:6:.TH ISO_8859-13 7 (date) "Linux man-pages (unrelease=
d)"
man7/iso_8859-5.7:6:.TH ISO_8859-5 7 (date) "Linux man-pages (unreleased)=
"
man7/koi8-r.7:6:.TH KOI8-R 7 (date) "Linux man-pages (unreleased)"
man7/session-keyring.7:6:.TH session-keyring 7 (date) "Linux man-pages (u=
nreleased)"
man7/user-session-keyring.7:6:.TH user-session-keyring 7 (date) "Linux ma=
n-pages (unreleased)"
man7/iso_8859-7.7:6:.TH ISO_8859-7 7 (date) "Linux man-pages (unreleased)=
"
man7/iso_8859-16.7:6:.TH ISO_8859-16 7 (date) "Linux man-pages (unrelease=
d)"
man7/iso_8859-15.7:7:.TH ISO_8859-15 7 (date) "Linux man-pages (unrelease=
d)"
man7/iso_8859-3.7:6:.TH ISO_8859-3 7 (date) "Linux man-pages (unreleased)=
"


Should the '-' in e.g. UTF-8 be hyphen, or should it be a minus?  Are all=
 of
these hyphens?  And if so, why would a hyphen belong there?

Also, there's inconsistency within the same page.  For example, in
session-keyring(7), we can see this:


$ grep 'session.\?-keyring' man7/session-keyring.7=20
=2ETH session-keyring 7 (date) "Linux man-pages (unreleased)"
session-keyring \- session shared process keyring
=2EBR user\-session\-keyring (7)
=2EBR user\-session\-keyring (7)
=2EBR user\-session\-keyring (7),


Why does user-session-keyring(7) go with minus, but session-keyring(7) go=
es
with hyphen?

There's also some inconsistency in the use of hyphens (and minus in the
filenames) and underscores; it seems that they are randomly chosen:


$ grep -rn '^\.TH [^ ]*_' man7
man7/iso_8859-10.7:6:.TH ISO_8859-10 7 (date) "Linux man-pages (unrelease=
d)"
man7/iso_8859-8.7:8:.TH ISO_8859-8 7 (date) "Linux man-pages (unreleased)=
"
man7/iso_8859-9.7:6:.TH ISO_8859-9 7 (date) "Linux man-pages (unreleased)=
"
man7/cgroup_namespaces.7:6:.TH cgroup_namespaces 7 (date) "Linux man-page=
s (unreleased)"
man7/shm_overview.7:6:.TH shm_overview 7 (date) "Linux man-pages (unrelea=
sed)"
man7/iso_8859-14.7:6:.TH ISO_8859-14 7 (date) "Linux man-pages (unrelease=
d)"
man7/network_namespaces.7:6:.TH network_namespaces 7 (date) "Linux man-pa=
ges (unreleased)"
man7/path_resolution.7:5:.TH path_resolution 7 (date) "Linux man-pages (u=
nreleased)"
man7/sem_overview.7:5:.TH sem_overview 7 (date) "Linux man-pages (unrelea=
sed)"
man7/iso_8859-11.7:8:.TH ISO_8859-11 7 (date) "Linux man-pages (unrelease=
d)"
man7/iso_8859-1.7:8:.TH ISO_8859-1 7 (date) "Linux man-pages (unreleased)=
"
man7/iso_8859-6.7:6:.TH ISO_8859-6 7 (date) "Linux man-pages (unreleased)=
"
man7/ipc_namespaces.7:6:.TH ipc_namespaces 7 (date) "Linux man-pages (unr=
eleased)"
man7/user_namespaces.7:7:.TH user_namespaces 7 (date) "Linux man-pages (u=
nreleased)"
man7/string_copying.7:5:.TH string_copying 7 (date) "Linux man-pages (unr=
eleased)"
man7/iso_8859-4.7:6:.TH ISO_8859-4 7 (date) "Linux man-pages (unreleased)=
"
man7/iso_8859-2.7:9:.TH ISO_8859-2 7 (date) "Linux man-pages (unreleased)=
"
man7/kernel_lockdown.7:7:.TH kernel_lockdown 7 (date) "Linux man-pages (u=
nreleased)"
man7/feature_test_macros.7:5:.TH feature_test_macros 7 (date) "Linux man-=
pages (unreleased)"
man7/mount_namespaces.7:7:.TH mount_namespaces 7 (date) "Linux man-pages =
(unreleased)"
man7/math_error.7:6:.TH math_error 7 (date) "Linux man-pages (unreleased)=
"
man7/iso_8859-13.7:6:.TH ISO_8859-13 7 (date) "Linux man-pages (unrelease=
d)"
man7/uts_namespaces.7:6:.TH uts_namespaces 7 (date) "Linux man-pages (unr=
eleased)"
man7/address_families.7:6:.TH address_families 7 (date) "Linux man-pages =
(unreleased)"
man7/time_namespaces.7:6:.TH time_namespaces 7 (date) "Linux man-pages (u=
nreleased)"
man7/iso_8859-5.7:6:.TH ISO_8859-5 7 (date) "Linux man-pages (unreleased)=
"
man7/pid_namespaces.7:7:.TH pid_namespaces 7 (date) "Linux man-pages (unr=
eleased)"
man7/mq_overview.7:6:.TH mq_overview 7 (date) "Linux man-pages (unrelease=
d)"
man7/sock_diag.7:5:.TH sock_diag 7 (date) "Linux man-pages (unreleased)"
man7/iso_8859-7.7:6:.TH ISO_8859-7 7 (date) "Linux man-pages (unreleased)=
"
man7/system_data_types.7:7:.TH system_data_types 7 (date) "Linux man-page=
s (unreleased)"
man7/iso_8859-16.7:6:.TH ISO_8859-16 7 (date) "Linux man-pages (unrelease=
d)"
man7/iso_8859-15.7:7:.TH ISO_8859-15 7 (date) "Linux man-pages (unrelease=
d)"
man7/iso_8859-3.7:6:.TH ISO_8859-3 7 (date) "Linux man-pages (unreleased)=
"


See for example time_namespaces.7 and session-keyring.7.  Any reason to p=
refer
a hyphen for one thing but an underscore for the other?  Hmmm, I hate thi=
s lack
of consistency.

Cheers,
Alex

P.S.:  My usb with keys just died today.  I can't sign emails until I get=

a new one working from a copy.  :(

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

